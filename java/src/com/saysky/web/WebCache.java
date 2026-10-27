package com.saysky.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import android.webkit.WebResourceResponse;

/**
 * Plugin-scoped disk cache for the WebUI layer.
 *
 * <p><b>Location is strict:</b> everything is stored under
 * {@code <plugin resources>/cache/} (the plugin's own resources directory, i.e. the
 * parent of its {@code web/} folder). Keys are validated and canonicalized so a plugin
 * can never write outside its own cache directory.</p>
 *
 * <p>Two kinds of entries:</p>
 * <ul>
 *   <li><b>element / data cache</b> - arbitrary key/value blobs ({@link #put(String, String, String)});</li>
 *   <li><b>page / resource cache</b> - URL keyed responses ({@link #putUrl(String, String, String, String)})
 *       served transparently by {@code shouldInterceptRequest} for http(s) requests
 *       (works offline, even from a {@code file://} page).</li>
 * </ul>
 *
 * <p>Limits: {@link #MAX_ENTRY_BYTES} per entry, {@link #MAX_TOTAL_BYTES} per plugin;
 * oldest files are evicted automatically. Caching can be disabled at any time via
 * {@link #setEnabled(String, boolean)} (Java) or {@code AOHCache.setEnabled(false)} (JS).</p>
 */
public final class WebCache {

    public static final long MAX_ENTRY_BYTES = 512L * 1024L;
    public static final long MAX_TOTAL_BYTES = 4L * 1024L * 1024L;
    private static final String CACHE_DIR = "cache";
    /** Small JSON next to {@code web/} (outside {@code cache/}, so "clear" keeps the choice). */
    private static final String PREF_FILE = "webui.json";
    private static final int MAX_KEY_LENGTH = 200;

    private static final ConcurrentHashMap<String, Boolean> ENABLED = new ConcurrentHashMap<String, Boolean>();

    private WebCache() {
    }

    /* ------------------------------------------------------------ control */

    public static boolean setEnabled(String pluginId, boolean enabled) {
        if (pluginId == null || pluginId.length() == 0) {
            return false;
        }
        ENABLED.put(pluginId, Boolean.valueOf(enabled));
        saveEnabled(pluginId, enabled);
        WebCore.log("cache: " + pluginId + " enabled=" + enabled);
        return true;
    }

    /** Memory value first; on first use the choice is restored from {@code <plugin>/webui.json}. */
    public static boolean isEnabled(String pluginId) {
        if (pluginId == null || pluginId.length() == 0) {
            return true;
        }
        Boolean b = ENABLED.get(pluginId);
        if (b == null) {
            Boolean loaded = Boolean.valueOf(loadEnabled(pluginId));
            Boolean prev = ENABLED.putIfAbsent(pluginId, loaded);
            b = prev == null ? loaded : prev;
        }
        return b.booleanValue();
    }

    private static boolean loadEnabled(String pluginId) {
        File dir = WebCore.pluginDataDir(pluginId);
        if (dir == null) {
            return true;
        }
        File f = new File(dir, PREF_FILE);
        if (!f.isFile()) {
            return true;
        }
        String s = readSmallText(f);
        if (s == null) {
            return true;
        }
        int i = s.indexOf("cacheEnabled");
        if (i < 0) {
            return true;
        }
        int c = s.indexOf(':', i);
        if (c < 0) {
            return true;
        }
        int end = c + 1;
        while (end < s.length() && Character.isWhitespace(s.charAt(end))) {
            end++;
        }
        return !s.startsWith("false", end);
    }

    private static void saveEnabled(String pluginId, boolean enabled) {
        File dir = WebCore.pluginDataDir(pluginId);
        if (dir == null) {
            return;
        }
        File f = new File(dir, PREF_FILE);
        File tmp = new File(f.getAbsolutePath() + ".tmp");
        OutputStream out = null;
        try {
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            out = new FileOutputStream(tmp);
            out.write(("{\"cacheEnabled\":" + (enabled ? "true" : "false") + "}")
                    .getBytes("UTF-8"));
            out.flush();
            out.close();
            out = null;
            if (f.exists() && !f.delete()) {
                return;
            }
            //noinspection ResultOfMethodCallIgnored
            tmp.renameTo(f);
        } catch (Throwable t) {
            WebCore.log("cache: save pref failed: " + t);
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
            //noinspection ResultOfMethodCallIgnored
            tmp.delete();
        }
    }

    private static String readSmallText(File f) {
        try {
            if (f.length() <= 0 || f.length() > 4096) {
                return null;
            }
            byte[] b = new byte[(int) f.length()];
            InputStream in = new FileInputStream(f);
            try {
                int off = 0;
                while (off < b.length) {
                    int n = in.read(b, off, b.length - off);
                    if (n <= 0) {
                        break;
                    }
                    off += n;
                }
            } finally {
                in.close();
            }
            return new String(b, "UTF-8");
        } catch (Throwable t) {
            return null;
        }
    }

    /** Root directory of a plugin cache (created on demand). */
    public static File cacheRoot(String pluginId) {
        File dataDir = WebCore.pluginDataDir(pluginId);
        if (dataDir == null) {
            return null;
        }
        File dir = new File(dataDir, CACHE_DIR);
        return dir;
    }

    /* ------------------------------------------------------------- element */

    /** Stores a small text element (never expires). */
    public static boolean put(String pluginId, String key, String value) {
        return put(pluginId, key, value, 0L);
    }

    /**
     * Stores a small text element.
     *
     * @param ttlSeconds {@code <= 0} 永不过期；{@code > 0} 则到期后 get/has 视为不存在
     */
    public static boolean put(String pluginId, String key, String value, long ttlSeconds) {
        if (value == null) {
            return false;
        }
        try {
            return putBytes(pluginId, "kv/" + key, value.getBytes("UTF-8"), ttlSeconds);
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    public static String get(String pluginId, String key) {
        byte[] b = getBytes(pluginId, "kv/" + key);
        if (b == null) {
            return null;
        }
        try {
            return new String(b, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    /** True when the element exists and has not expired. */
    public static boolean has(String pluginId, String key) {
        File f = resolve(pluginId, "kv/" + key);
        if (f == null || !f.isFile()) {
            return false;
        }
        byte[] b = readPayload(f);
        if (b == null) {
            return false;
        }
        f.setLastModified(System.currentTimeMillis());
        return true;
    }

    /** Logical element keys (no {@code kv/} prefix, percent-decoded). */
    public static List<String> keys(String pluginId) {
        List<String> out = new ArrayList<String>();
        List<String> all = list(pluginId);
        for (int i = 0; i < all.size(); i++) {
            String p = all.get(i);
            if (p.startsWith("kv/") && p.length() > 3) {
                out.add(p.substring(3));
            }
        }
        return out;
    }

    public static boolean remove(String pluginId, String key) {
        File f = resolve(pluginId, "kv/" + key);
        return f != null && f.isFile() && f.delete();
    }

    /* ----------------------------------------------------------------- url */

    /** Caches a response for an http(s) URL so the page can fetch it offline. */
    public static boolean putUrl(String pluginId, String url, String mime, String text) {
        return putUrl(pluginId, url, mime, text, 0L);
    }

    /**
     * Same as {@link #putUrl(String, String, String, String)} with a TTL.
     *
     * @param ttlSeconds {@code <= 0} 永不过期；{@code > 0} 到期后不再命中拦截
     */
    public static boolean putUrl(String pluginId, String url, String mime, String text, long ttlSeconds) {
        if (text == null) {
            return false;
        }
        try {
            return putUrl(pluginId, url, mime, text.getBytes("UTF-8"), ttlSeconds);
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    public static boolean putUrl(String pluginId, String url, String mime, byte[] data) {
        return putUrl(pluginId, url, mime, data, 0L);
    }

    public static boolean putUrl(String pluginId, String url, String mime, byte[] data, long ttlSeconds) {
        if (url == null || data == null) {
            return false;
        }
        String hash = sha1(url);
        if (hash == null) {
            return false;
        }
        String ext = extensionOf(url);
        String key = "url/" + hash + "." + ext;
        if (!putBytes(pluginId, key, data, ttlSeconds)) {
            return false;
        }
        try {
            writeText(pluginId, "url/" + hash + ".mime",
                    (mime == null || mime.length() == 0) ? "application/octet-stream" : mime);
        } catch (Throwable ignored) {
        }
        WebCore.log("cache: putUrl " + url + " (" + data.length + " B) -> " + key);
        return true;
    }

    /** Reads a cached URL response back into JS (text). null = 未缓存/已过期/被禁用。 */
    public static String getUrlText(String pluginId, String url) {
        if (url == null) {
            return null;
        }
        String hash = sha1(url);
        if (hash == null) {
            return null;
        }
        byte[] b = getBytes(pluginId, "url/" + hash + "." + extensionOf(url));
        if (b == null) {
            return null;
        }
        try {
            return new String(b, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    /** Used by the WebView request interceptor; returns null when not cached/disabled. */
    static WebResourceResponse intercept(String pluginId, String url) {
        if (url == null || !isEnabled(pluginId)) {
            return null;
        }
        String hash = sha1(url);
        if (hash == null) {
            return null;
        }
        File f = resolve(pluginId, "url/" + hash + "." + extensionOf(url));
        if (f == null || !f.isFile()) {
            return null;
        }
        try {
            byte[] data = readPayload(f);
            if (data == null) {
                return null;
            }
            String mime = readText(pluginId, "url/" + hash + ".mime");
            if (mime == null || mime.length() == 0) {
                mime = mimeFor(extensionOf(url));
            }
            InputStream in = new java.io.ByteArrayInputStream(data);
            WebResourceResponse r = new WebResourceResponse(mime, "utf-8", in);
            java.util.HashMap<String, String> headers = new java.util.HashMap<String, String>();
            headers.put("Access-Control-Allow-Origin", "*");
            headers.put("Cache-Control", "no-store");
            try {
                r.setResponseHeaders(headers);
            } catch (Throwable ignored) {
            }
            f.setLastModified(System.currentTimeMillis());
            WebCore.log("cache: hit " + url + " (" + data.length + " B)");
            return r;
        } catch (Throwable t) {
            WebCore.log("cache: intercept failed " + url + ": " + t);
            return null;
        }
    }

    /* --------------------------------------------------------------- admin */

    public static boolean clear(String pluginId) {
        File root = cacheRoot(pluginId);
        if (root == null) {
            return false;
        }
        deleteChildren(root);
        WebCore.log("cache: clear " + pluginId);
        return true;
    }

    /** Relative paths of all cached files (newest first). */
    public static List<String> list(String pluginId) {
        List<String> out = new ArrayList<String>();
        File root = cacheRoot(pluginId);
        if (root == null) {
            return out;
        }
        collect(root, root, out);
        for (int i = 0; i < out.size(); i++) {
            out.set(i, decodeKey(out.get(i)));
        }
        Collections.sort(out);
        return out;
    }

    public static long totalBytes(String pluginId) {
        return sizeOf(cacheRoot(pluginId));
    }

    public static String stats(String pluginId) {
        File root = cacheRoot(pluginId);
        List<String> files = list(pluginId);
        return "enabled=" + isEnabled(pluginId)
                + " files=" + files.size()
                + " bytes=" + sizeOf(root)
                + " maxBytes=" + MAX_TOTAL_BYTES
                + " dir=" + (root == null ? "-" : root.getAbsolutePath());
    }

    /* -------------------------------------------------------------- internals */

    /** File layout: optional ASCII header {@code #ttl:<epochMillis>} + LF, then the payload. */
    private static final String TTL_PREFIX = "#ttl:";

    private static boolean putBytes(String pluginId, String key, byte[] data, long ttlSeconds) {
        if (data == null || data.length == 0 || data.length > MAX_ENTRY_BYTES) {
            WebCore.log("cache: reject size " + (data == null ? -1 : data.length) + " (" + key + ")");
            return false;
        }
        if (!isEnabled(pluginId)) {
            WebCore.log("cache: disabled, skip " + key);
            return false;
        }
        File f = resolve(pluginId, key);
        if (f == null) {
            WebCore.log("cache: reject key " + key);
            return false;
        }
        File parent = f.getParentFile();
        if (parent != null && !parent.isDirectory() && !parent.mkdirs()) {
            return false;
        }
        OutputStream out = null;
        File tmp = new File(f.getAbsolutePath() + ".tmp");
        try {
            out = new FileOutputStream(tmp);
            if (ttlSeconds > 0) {
                long exp = System.currentTimeMillis() + ttlSeconds * 1000L;
                if (exp < 0) {
                    exp = Long.MAX_VALUE;
                }
                out.write((TTL_PREFIX + exp + "\n").getBytes("US-ASCII"));
            }
            out.write(data);
            out.flush();
            out.close();
            out = null;
            if (f.exists() && !f.delete()) {
                return false;
            }
            if (!tmp.renameTo(f)) {
                return false;
            }
            enforceLimit(pluginId);
            return true;
        } catch (Throwable t) {
            WebCore.log("cache: write failed " + key + ": " + t);
            return false;
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
            if (tmp.exists()) {
                //noinspection ResultOfMethodCallIgnored
                tmp.delete();
            }
        }
    }

    private static byte[] getBytes(String pluginId, String key) {
        File f = resolve(pluginId, key);
        if (f == null || !f.isFile()) {
            return null;
        }
        byte[] b = readPayload(f);
        if (b == null) {
            return null;
        }
        f.setLastModified(System.currentTimeMillis());
        return b;
    }

    /** Reads a payload, honouring (and deleting) expired entries. */
    private static byte[] readPayload(File f) {
        byte[] all;
        try {
            long len = f.length();
            if (len <= 0 || len > MAX_ENTRY_BYTES + 64) {
                return null;
            }
            all = new byte[(int) len];
            InputStream in = new FileInputStream(f);
            try {
                int off = 0;
                while (off < all.length) {
                    int n = in.read(all, off, all.length - off);
                    if (n <= 0) {
                        break;
                    }
                    off += n;
                }
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            return null;
        }
        int start = 0;
        long exp = 0L;
        if (all.length > TTL_PREFIX.length() + 1 && all[0] == '#') {
            int lim = Math.min(all.length, 48);
            int nl = -1;
            for (int i = 0; i < lim; i++) {
                if (all[i] == '\n') {
                    nl = i;
                    break;
                }
            }
            if (nl > TTL_PREFIX.length()) {
                String hdr = new String(all, 0, nl);
                if (hdr.startsWith(TTL_PREFIX)) {
                    try {
                        exp = Long.parseLong(hdr.substring(TTL_PREFIX.length()).trim());
                    } catch (Throwable ignored) {
                        exp = 0L;
                    }
                    start = nl + 1;
                }
            }
        }
        if (exp > 0L && exp <= System.currentTimeMillis()) {
            //noinspection ResultOfMethodCallIgnored
            f.delete();
            return null;
        }
        byte[] out = new byte[all.length - start];
        System.arraycopy(all, start, out, 0, out.length);
        return out;
    }

    private static String readText(String pluginId, String key) {
        byte[] b = getBytes(pluginId, key);
        try {
            return b == null ? null : new String(b, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    private static void writeText(String pluginId, String key, String text) {
        try {
            putBytes(pluginId, key, text.getBytes("UTF-8"), 0L);
        } catch (UnsupportedEncodingException ignored) {
        }
    }

    /** Canonicalizes a user key under the plugin cache root; null if unsafe. */
    private static File resolve(String pluginId, String key) {
        if (pluginId == null || key == null) {
            return null;
        }
        String k = key.replace('\\', '/').trim();
        while (k.startsWith("/")) {
            k = k.substring(1);
        }
        if (k.length() == 0 || k.length() > MAX_KEY_LENGTH) {
            return null;
        }
        // Traversal is rejected on the logical key, then the key is percent-encoded into a
        // filesystem-safe relative path (':' '#' '?' etc. are legal in keys, illegal in names).
        if (k.contains("..")) {
            return null;
        }
        String enc = encodeKey(k);
        if (enc == null || enc.length() > MAX_KEY_LENGTH * 3) {
            return null;
        }
        k = enc;
        File root = cacheRoot(pluginId);
        if (root == null) {
            return null;
        }
        try {
            if (!root.isDirectory() && !root.mkdirs()) {
                return null;
            }
            String rootCanon = root.getCanonicalPath();
            File f = new File(root, k);
            String canon = f.getCanonicalPath();
            if (!canon.startsWith(rootCanon + File.separator)) {
                return null;
            }
            return f;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * Percent-encodes every byte outside {@code [A-Za-z0-9._/-]} so any logical key
     * (e.g. {@code demo:counter}, {@code 中文/key}) maps to a safe relative path.
     * {@code '%'} is encoded too, so encoding is unambiguous.
     */
    private static String encodeKey(String key) {
        byte[] bytes;
        try {
            bytes = key.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bytes.length + 8);
        for (int i = 0; i < bytes.length; i++) {
            int b = bytes[i] & 0xFF;
            boolean ok = b < 128 && ((b >= 'a' && b <= 'z') || (b >= 'A' && b <= 'Z')
                    || (b >= '0' && b <= '9')
                    || b == '.' || b == '_' || b == '-' || b == '/');
            if (ok) {
                sb.append((char) b);
            } else {
                sb.append('%');
                sb.append(Character.toUpperCase(Character.forDigit((b >> 4) & 0xF, 16)));
                sb.append(Character.toUpperCase(Character.forDigit(b & 0xF, 16)));
            }
        }
        return sb.toString();
    }

    /** Pretty form of a cached relative path (percent-decoded) for {@link #list(String)}. */
    private static String decodeKey(String rel) {
        if (rel == null || rel.indexOf('%') < 0) {
            return rel;
        }
        StringBuilder sb = new StringBuilder(rel.length());
        for (int i = 0; i < rel.length(); i++) {
            char c = rel.charAt(i);
            if (c == '%' && i + 2 < rel.length()) {
                int hi = Character.digit(rel.charAt(i + 1), 16);
                int lo = Character.digit(rel.charAt(i + 2), 16);
                if (hi >= 0 && lo >= 0) {
                    sb.append((char) ((hi << 4) + lo));
                    i += 2;
                    continue;
                }
            }
            sb.append(c);
        }
        return sb.toString();
    }

    /** Deletes oldest files until the plugin cache is below {@link #MAX_TOTAL_BYTES}. */
    private static void enforceLimit(String pluginId) {
        File root = cacheRoot(pluginId);
        if (root == null) {
            return;
        }
        List<File> files = new ArrayList<File>();
        collectFiles(root, files);
        long total = 0L;
        for (int i = 0; i < files.size(); i++) {
            total += files.get(i).length();
        }
        if (total <= MAX_TOTAL_BYTES) {
            return;
        }
        Collections.sort(files, new Comparator<File>() {
            @Override
            public int compare(File a, File b) {
                long x = a.lastModified();
                long y = b.lastModified();
                return x < y ? -1 : (x > y ? 1 : 0);
            }
        });
        for (int i = 0; i < files.size() && total > MAX_TOTAL_BYTES; i++) {
            File f = files.get(i);
            long len = f.length();
            if (f.delete()) {
                total -= len;
                WebCore.log("cache: evict " + f.getName() + " (" + len + " B)");
            }
        }
    }

    private static void collect(File root, File dir, List<String> out) {
        File[] fs = dir.listFiles();
        if (fs == null) {
            return;
        }
        for (int i = 0; i < fs.length; i++) {
            File f = fs[i];
            if (f.isDirectory()) {
                collect(root, f, out);
            } else if (f.isFile() && !f.getName().endsWith(".tmp")) {
                try {
                    out.add(f.getCanonicalPath().substring(root.getCanonicalPath().length() + 1));
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static void collectFiles(File dir, List<File> out) {
        File[] fs = dir.listFiles();
        if (fs == null) {
            return;
        }
        for (int i = 0; i < fs.length; i++) {
            File f = fs[i];
            if (f.isDirectory()) {
                collectFiles(f, out);
            } else if (f.isFile()) {
                out.add(f);
            }
        }
    }

    private static long sizeOf(File dir) {
        if (dir == null) {
            return 0L;
        }
        List<File> files = new ArrayList<File>();
        collectFiles(dir, files);
        long total = 0L;
        for (int i = 0; i < files.size(); i++) {
            total += files.get(i).length();
        }
        return total;
    }

    private static void deleteChildren(File dir) {
        File[] fs = dir.listFiles();
        if (fs == null) {
            return;
        }
        for (int i = 0; i < fs.length; i++) {
            File f = fs[i];
            if (f.isDirectory()) {
                deleteChildren(f);
            }
            //noinspection ResultOfMethodCallIgnored
            f.delete();
        }
    }

    private static String sha1(String s) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] d = md.digest(s.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(d.length * 2);
            for (int i = 0; i < d.length; i++) {
                int v = d[i] & 0xFF;
                if (v < 16) {
                    sb.append('0');
                }
                sb.append(Integer.toHexString(v));
            }
            return sb.toString();
        } catch (Throwable t) {
            return null;
        }
    }

    private static String extensionOf(String url) {
        try {
            String path = url;
            int q = path.indexOf('?');
            if (q >= 0) {
                path = path.substring(0, q);
            }
            int h = path.indexOf('#');
            if (h >= 0) {
                path = path.substring(0, h);
            }
            int slash = Math.max(path.lastIndexOf('/'), path.lastIndexOf('\\'));
            int dot = path.lastIndexOf('.');
            if (dot > slash && dot < path.length() - 1) {
                String ext = path.substring(dot + 1).toLowerCase();
                if (ext.length() <= 8) {
                    boolean ok = true;
                    for (int i = 0; i < ext.length(); i++) {
                        char c = ext.charAt(i);
                        if (!((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9'))) {
                            ok = false;
                            break;
                        }
                    }
                    if (ok) {
                        return ext;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return "bin";
    }

    private static String mimeFor(String ext) {
        if ("html".equals(ext) || "htm".equals(ext)) {
            return "text/html";
        }
        if ("js".equals(ext)) {
            return "application/javascript";
        }
        if ("css".equals(ext)) {
            return "text/css";
        }
        if ("json".equals(ext)) {
            return "application/json";
        }
        if ("png".equals(ext)) {
            return "image/png";
        }
        if ("jpg".equals(ext) || "jpeg".equals(ext)) {
            return "image/jpeg";
        }
        if ("gif".equals(ext)) {
            return "image/gif";
        }
        if ("svg".equals(ext)) {
            return "image/svg+xml";
        }
        if ("txt".equals(ext)) {
            return "text/plain";
        }
        return "application/octet-stream";
    }
}
