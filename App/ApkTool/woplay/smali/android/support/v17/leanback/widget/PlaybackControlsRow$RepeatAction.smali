.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatAction"
.end annotation


# static fields
.field public static ALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INDEX_ALL:I = 0x1

.field public static final INDEX_NONE:I = 0x0

.field public static final INDEX_ONE:I = 0x2

.field public static NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static ONE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 515
    invoke-static {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getIconHighlightColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 524
    invoke-direct {p0, p1, p2, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7

    .line 534
    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_repeat:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    const/4 v0, 0x3

    .line 535
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 536
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_repeat:I

    invoke-static {p1, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 538
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_repeat_one:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    .line 541
    :cond_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 543
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v5, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 p2, 0x1

    aput-object v5, v0, p2

    if-nez v2, :cond_1

    goto :goto_1

    .line 544
    :cond_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 546
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {v4, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    const/4 p3, 0x2

    aput-object v4, v0, p3

    .line 547
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 549
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 551
    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_repeat_all:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 552
    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_repeat_one:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 553
    sget p2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_repeat_none:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    .line 554
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->setLabels([Ljava/lang/String;)V

    return-void
.end method
