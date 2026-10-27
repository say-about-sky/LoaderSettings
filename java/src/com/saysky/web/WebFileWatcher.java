package com.saysky.web;

import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Tiny recursive file watcher for plugin web directories (polling, daemon thread).
 * It only compares mtime/length signatures; no WatchService (not available on older ART).
 */
final class WebFileWatcher {

    private static final Map<String, Thread> THREADS = new ConcurrentHashMap<String, Thread>();
    private static final long POLL_MS = 600L;

    private WebFileWatcher() {
    }

    static void watch(final String id, final File dir) {
        if (id == null || dir == null || THREADS.containsKey(id)) {
            return;
        }
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                long last = signature(dir);
                while (WebCore.plugin(id) != null) {
                    try {
                        Thread.sleep(POLL_MS);
                    } catch (InterruptedException e) {
                        return;
                    }
                    long now = signature(dir);
                    if (now == last) {
                        continue;
                    }
                    last = now;
                    try {
                        Thread.sleep(120L);
                    } catch (InterruptedException e) {
                        return;
                    }
                    last = signature(dir);
                    WebCore.onPluginFilesChanged(id);
                }
                if (THREADS.get(id) == Thread.currentThread()) {
                    THREADS.remove(id);
                }
            }
        }, "AOH3Web-watch-" + id);
        t.setDaemon(true);
        t.setPriority(Thread.MIN_PRIORITY);
        THREADS.put(id, t);
        t.start();
        WebCore.log("watch: " + dir.getAbsolutePath());
    }

    static void stop(String id) {
        Thread t = THREADS.remove(id);
        if (t != null) {
            t.interrupt();
        }
    }

    private static long signature(File dir) {
        if (dir == null || !dir.exists()) {
            return 0L;
        }
        long[] out = new long[]{17L, 0L};
        walk(dir, out, 0);
        return out[0] * 31L + out[1];
    }

    private static void walk(File file, long[] out, int depth) {
        if (file == null || depth > 8) {
            return;
        }
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                return;
            }
            for (int i = 0; i < children.length; i++) {
                String name = children[i].getName();
                if (name.startsWith(".") || name.endsWith(".tmp")) {
                    continue;
                }
                walk(children[i], out, depth + 1);
            }
            return;
        }
        out[0] = out[0] * 31L + file.lastModified();
        out[1] = out[1] * 31L + file.length();
    }
}
