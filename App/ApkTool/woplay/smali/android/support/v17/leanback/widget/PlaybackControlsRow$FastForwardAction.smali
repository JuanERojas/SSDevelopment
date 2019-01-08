.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastForwardAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .line 255
    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_fast_forward:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 258
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numSpeeds must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 260
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 261
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_fast_forward:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 263
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getActionCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 266
    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_fast_forward:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 268
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getActionCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 269
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p2, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v17/leanback/R$string;->lb_control_display_fast_forward_multiplier:I

    new-array v8, v0, [Ljava/lang/Object;

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 273
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v17/leanback/R$string;->lb_playback_controls_fast_forward_multiplier:I

    new-array v8, v0, [Ljava/lang/Object;

    .line 276
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 275
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    move v4, v5

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setLabels([Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setSecondaryLabels([Ljava/lang/String;)V

    const/16 p1, 0x5a

    .line 280
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->addKeyCode(I)V

    return-void
.end method
