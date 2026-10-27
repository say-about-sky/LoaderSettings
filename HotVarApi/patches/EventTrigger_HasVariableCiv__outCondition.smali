# HotVarApi: rewrite EventTrigger_HasVariableCiv.outCondition(II)Z
#   vanilla: civID = Game.getCivID(civTAG); civID <= 0 -> false; hasVariable(value)
#   new    : HotVars.hasCivTag(civTAG, value)  (does the tag -> id lookup + fallback inside)
#   note   : iCivID / iProvinceID are unused by this trigger, so p1/p2 stay untouched.
.method public outCondition(II)Z
    .registers 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv;->civTAG:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/saysky/hotvar/HotVars;->hasCivTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
