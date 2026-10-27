.method public render()V
    .registers 4

    new-instance v0, Lteam/rainfall/finality/luminosity2/CallbackInfo;

    invoke-direct {v0}, Lteam/rainfall/finality/luminosity2/CallbackInfo;-><init>()V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->inject$render(Lteam/rainfall/finality/luminosity2/CallbackInfo;)V

    move-object v0, p0

    .line 503
    .local v0, "this":Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;
    :try_start_9
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->update()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 506
    goto :goto_11

    .line 504
    :catch_d
    move-exception v1

    .line 505
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 508
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_11
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearScreen()V

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_OFF:Z

    if-eqz v1, :cond_map_off_cont

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale()V

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderUI()V

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    return-void

    :cond_map_off_cont

    .line 510
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_SetToCurrentScale()V

    .line 512
    :try_start_17
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 513
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/Map;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_26

    .line 516
    goto :goto_2a

    .line 514
    :catch_26
    move-exception v1

    .line 515
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 521
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawCurrentScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 523
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale2()V

    .line 524
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawWithoutScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 526
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_SetToCurrentScale2()V

    .line 531
    :try_start_3e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_46

    .line 534
    goto :goto_4a

    .line 532
    :catch_46
    move-exception v1

    .line 533
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 537
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4a
    :try_start_4a
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_50

    .line 540
    goto :goto_54

    .line 538
    :catch_50
    move-exception v1

    .line 539
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 541
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_54
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale()V

    .line 544
    :try_start_57
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_5f

    .line 547
    goto :goto_63

    .line 545
    :catch_5f
    move-exception v1

    .line 546
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 550
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_63
    :try_start_63
    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderUI()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    .line 553
    goto :goto_6b

    .line 551
    :catch_67
    move-exception v1

    .line 552
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 558
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6b
    :try_start_6b
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_71

    .line 561
    goto :goto_75

    .line 559
    :catch_71
    move-exception v1

    .line 560
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 564
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_75
    :try_start_75
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 567
    goto :goto_7f

    .line 565
    :catch_7b
    move-exception v1

    .line 566
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 568
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_7f
    return-void
.end method