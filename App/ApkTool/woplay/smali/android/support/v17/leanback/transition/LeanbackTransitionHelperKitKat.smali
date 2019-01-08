.class Landroid/support/v17/leanback/transition/LeanbackTransitionHelperKitKat;
.super Ljava/lang/Object;
.source "LeanbackTransitionHelperKitKat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    .line 26
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat;-><init>()V

    const/16 v1, 0x30

    .line 27
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    const v1, 0x10a0006

    .line 28
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 30
    sget p0, Landroid/support/v17/leanback/R$id;->browse_title_group:I

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->addTarget(I)Landroid/transition/Transition;

    return-object v0
.end method

.method public static loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    .line 35
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat;-><init>()V

    const/16 v1, 0x30

    .line 36
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    .line 37
    sget v1, Landroid/support/v17/leanback/R$anim;->lb_decelerator_4:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 39
    sget p0, Landroid/support/v17/leanback/R$id;->browse_title_group:I

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->addTarget(I)Landroid/transition/Transition;

    return-object v0
.end method
