package com.saysky.sample;

import java.io.File;

import com.saysky.game.GameApi;
import com.saysky.hotplugloader.api.HotContext;
import com.saysky.hotplugloader.api.HotPlugin;
import com.saysky.hotplugloader.api.HotPluginInfo;

/**
 * 示例：不使用 Web 的普通热插件如何调用 GameApi（编译期只需 HotPluginLoader.jar + ui-api.jar）。
 *
 * <p>javac 示例（PowerShell）：</p>
 * <pre>
 * javac -encoding UTF-8 --release 8 -cp "HotPluginLoader-0.2.0.jar;LoaderSettings\out\ui-api.jar" -d classes src\...\GameApiSample.java
 * </pre>
 */
@HotPluginInfo(id = "com.saysky.sample.gameapi", name = "GameApi Sample", version = "0.1.0", trusted = true,
        description = "console / event demo without WebView")
public final class GameApiSample implements HotPlugin {

    @Override
    public void init(HotContext ctx) {
        ctx.log("GameApi " + GameApi.VERSION + " inGame=" + GameApi.inGame());

        // 1) 载入插件自己的事件文件（路径被限制在 ctx.dataDir() 内，越界会被拒绝）
        String r1 = GameApi.loadEventFile(new File(ctx.dataDir(), "event/event_demo.txt"));
        ctx.log("loadEventFile: " + r1);

        // 2) 触发（真正执行在下一帧的 GL 线程；未读档时返回 rejected: no active save）
        ctx.log("event: " + GameApi.event("event_demo.1"));

        // 3) 控制台命令
        ctx.log("console: " + GameApi.console("gold 100"));

        // 4) 状态
        ctx.log("status: " + GameApi.status());
    }
}
