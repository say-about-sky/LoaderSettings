# Rewritten body of aoc.kingdoms.lukasz.jakowski.ArmyClickSoundManager.playForCiv(I)V
# Original manager: civTag -> realTag -> default/common -> vanilla.
# New manager (com.saysky.armyvoice.ArmyVoice): civTag -> religions -> culture -> default.
.method public static playForCiv(I)V
    .registers 1

    invoke-static {p0}, Lcom/saysky/armyvoice/ArmyVoice;->playForCiv(I)V

    return-void
.end method
