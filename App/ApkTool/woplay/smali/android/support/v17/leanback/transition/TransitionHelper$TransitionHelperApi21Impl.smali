.class final Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;
.super Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;
.source "TransitionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransitionHelperApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 593
    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 638
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public createChangeTransform()Ljava/lang/Object;
    .locals 1

    .line 688
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->createChangeTransform()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 678
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 0

    .line 628
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 0

    .line 633
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createScale()Ljava/lang/Object;
    .locals 1

    .line 673
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->createScale()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 643
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 663
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getExitTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 668
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 653
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 598
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 618
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 623
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    .line 608
    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    .line 576
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    .line 648
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 0

    .line 694
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    return-void
.end method

.method public setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    .line 581
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    .line 658
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    .line 587
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    .line 603
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    .line 613
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 683
    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperApi21;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method
