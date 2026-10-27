# HotVarApi: rewrite EventTrigger_HasVariableNot.outCondition(II)Z
#   vanilla: !Game.getCiv(iCivID).eventsDataVariables.hasVariable(value)
#   new    : HotVars.has(civID, value) with the boolean flipped (xor 0x1)
.method public outCondition(II)Z
    .registers 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/saysky/hotvar/HotVars;->has(ILjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
