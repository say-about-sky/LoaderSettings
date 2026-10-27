.method private static final drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F
    .param p2, "iProvinceID"    # I

    #siegetint-hook: replace vanilla fort icon + progress bar with province color filter
    invoke-static {p0, p1, p2}, Lcom/saysky/siegetint/SiegeTint;->drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    return-void
.end method