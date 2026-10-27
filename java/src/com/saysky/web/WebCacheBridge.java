package com.saysky.web;

import android.webkit.JavascriptInterface;

/**
 * JS bridge exposed as {@code window.AOHCache} (one per WebView/session).
 *
 * <pre>{@code
 * AOHCache.setEnabled(false);                // veto caching from JS
 * AOHCache.put('key', 'value');              // element/data cache (plugin cache dir)
 * AOHCache.get('key');
 * AOHCache.putUrl('https://x/y.json', 'application/json', '{"ok":1}');
 * AOHCache.stats();
 * }</pre>
 *
 * All files stay under {@code <plugin resources>/cache/}.
 */
public final class WebCacheBridge {

    private final String pluginId;

    public WebCacheBridge(String sessionKey) {
        String key = sessionKey == null ? "" : sessionKey;
        int i = key.indexOf('|');
        this.pluginId = i < 0 ? key : key.substring(0, i);
    }

    @JavascriptInterface
    public String plugin() {
        return pluginId;
    }

    @JavascriptInterface
    public boolean enabled() {
        return WebCache.isEnabled(pluginId);
    }

    @JavascriptInterface
    public boolean setEnabled(boolean on) {
        return WebCache.setEnabled(pluginId, on);
    }

    @JavascriptInterface
    public boolean put(String key, String value) {
        return WebCache.put(pluginId, key, value);
    }

    /** Same as {@link #put} but the entry expires after {@code ttlSeconds} (&lt;= 0 = never). */
    @JavascriptInterface
    public boolean putTtl(String key, String value, int ttlSeconds) {
        return WebCache.put(pluginId, key, value, ttlSeconds);
    }

    @JavascriptInterface
    public String get(String key) {
        return WebCache.get(pluginId, key);
    }

    @JavascriptInterface
    public boolean has(String key) {
        return WebCache.has(pluginId, key);
    }

    /** Logical element keys, newline separated. */
    @JavascriptInterface
    public String keys() {
        StringBuilder sb = new StringBuilder();
        java.util.List<String> ks = WebCache.keys(pluginId);
        for (int i = 0; i < ks.size(); i++) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(ks.get(i));
        }
        return sb.toString();
    }

    @JavascriptInterface
    public boolean remove(String key) {
        return WebCache.remove(pluginId, key);
    }

    @JavascriptInterface
    public boolean clear() {
        return WebCache.clear(pluginId);
    }

    @JavascriptInterface
    public String list() {
        StringBuilder sb = new StringBuilder();
        java.util.List<String> files = WebCache.list(pluginId);
        for (int i = 0; i < files.size(); i++) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(files.get(i));
        }
        return sb.toString();
    }

    @JavascriptInterface
    public String stats() {
        return WebCache.stats(pluginId);
    }

    @JavascriptInterface
    public String totalBytes() {
        return String.valueOf(WebCache.totalBytes(pluginId));
    }

    @JavascriptInterface
    public boolean putUrl(String url, String mime, String text) {
        return WebCache.putUrl(pluginId, url, mime, text);
    }

    /** Same as {@link #putUrl} but the response expires after {@code ttlSeconds}. */
    @JavascriptInterface
    public boolean putUrlTtl(String url, String mime, String text, int ttlSeconds) {
        return WebCache.putUrl(pluginId, url, mime, text, ttlSeconds);
    }

    /** Reads a cached URL response into JS (null when missing/expired/disabled). */
    @JavascriptInterface
    public String getUrl(String url) {
        return WebCache.getUrlText(pluginId, url);
    }
}
