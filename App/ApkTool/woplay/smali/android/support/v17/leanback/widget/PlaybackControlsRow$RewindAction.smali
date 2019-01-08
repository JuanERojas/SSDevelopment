.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewindAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 293
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .line 302
    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_fast_rewind:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 305
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numSpeeds must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 307
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 308
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_rewind:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 310
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getActionCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 313
    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_rewind:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 315
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getActionCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 316
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p2, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v17/leanback/R$string;->lb_control_display_rewind_multiplier:I

    new-array v8, v0, [Ljava/lang/Object;

    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 320
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    aput-object v6, v1, v4

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v17/leanback/R$string;->lb_playback_controls_rewind_multiplier:I

    new-array v8, v0, [Ljava/lang/Object;

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 322
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    move v4, v5

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setLabels([Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setSecondaryLabels([Ljava/lang/String;)V

    const/16 p1, 0x59

    .line 327
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->addKeyCode(I)V

    return-void
.end method
