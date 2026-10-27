# HotVarApi: rewrite EventTrigger_HasVariable.outCondition(II)Z
#   vanilla: Game.getCiv(iCivID).eventsDataVariables.hasVariable(value)
#   new    : com.saysky.hotvar.HotVars.has(civID, value)
#            (registered hot-plugin prefix first, vanilla variable list as fallback)
.method public outCondition(II)Z
    .registers 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/saysky/hotvar/HotVars;->has(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
