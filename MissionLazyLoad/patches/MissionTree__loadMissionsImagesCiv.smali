# Adapter only -- all logic lives in com.saysky.missionopt.MissionLazy (java\src).
# Original: builds images + decodes textures for every civ mission.
# Now: builds the name -> ImageID index only; textures are decoded on demand by MissionLazy.get().
.method public static loadMissionsImagesCiv(I)V
    .registers 1
    .param p0, "civID"    # I

    invoke-static {p0}, Lcom/saysky/missionopt/MissionLazy;->indexCiv(I)V

    return-void
.end method
