# Adapter only -- logic lives in com.saysky.missionopt.MissionLazy (java\src).
# MissionLazy.loadCivs() parses each civ's missions/events in a thread pool and merges them
# back on the calling (GL) thread in the original civID order.
.method public static loadMissions_Civs()V
    .registers 1

    invoke-static {}, Lcom/saysky/missionopt/MissionLazy;->loadCivs()V

    return-void
.end method
