# Adapter only -- all logic lives in com.saysky.missionopt.MissionLazy (java\src).
# MissionLazy.disposeCivs() is null-safe (the image list may hold null placeholders).
.method public static disposeMissionImagesCivs()V
    .registers 1

    invoke-static {}, Lcom/saysky/missionopt/MissionLazy;->disposeCivs()V

    return-void
.end method
