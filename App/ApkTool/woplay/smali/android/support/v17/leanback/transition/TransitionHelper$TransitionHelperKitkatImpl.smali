.class Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;
.super Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;
.source "TransitionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionHelperKitkatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 557
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 492
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 0

    .line 537
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public createAutoTransition()Ljava/lang/Object;
    .locals 1

    .line 441
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createAutoTransition()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createChangeBounds(Z)Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createFadeTransition(I)Ljava/lang/Object;
    .locals 0

    .line 446
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createScale()Ljava/lang/Object;
    .locals 1

    .line 461
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createScale()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    .line 436
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createSlide(I)Ljava/lang/Object;
    .locals 0

    .line 456
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createSlide(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createTransitionSet(Z)Ljava/lang/Object;
    .locals 0

    .line 487
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public exclude(Ljava/lang/Object;IZ)V
    .locals 0

    .line 497
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->exclude(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    .line 502
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    return-void
.end method

.method public excludeChildren(Ljava/lang/Object;IZ)V
    .locals 0

    .line 507
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->excludeChildren(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    .line 512
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V

    return-void
.end method

.method public include(Ljava/lang/Object;I)V
    .locals 0

    .line 517
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->include(Ljava/lang/Object;I)V

    return-void
.end method

.method public include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 522
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->include(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 0

    .line 567
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 0

    .line 542
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 547
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V
    .locals 0

    .line 482
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V

    return-void
.end method

.method public setChangeBoundsStartDelay(Ljava/lang/Object;II)V
    .locals 0

    .line 471
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setChangeBoundsStartDelay(Ljava/lang/Object;II)V

    return-void
.end method

.method public setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 466
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 477
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public setDuration(Ljava/lang/Object;J)V
    .locals 0

    .line 532
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setDuration(Ljava/lang/Object;J)V

    return-void
.end method

.method public setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 552
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartDelay(Ljava/lang/Object;J)V
    .locals 0

    .line 527
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setStartDelay(Ljava/lang/Object;J)V

    return-void
.end method
