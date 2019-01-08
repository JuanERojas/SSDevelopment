.class public final Landroid/support/v17/leanback/transition/TransitionHelper;
.super Ljava/lang/Object;
.source "TransitionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;,
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;,
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;,
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;
    }
.end annotation


# static fields
.field public static final FADE_IN:I = 0x1

.field public static final FADE_OUT:I = 0x2

.field public static final SLIDE_BOTTOM:I = 0x50

.field public static final SLIDE_LEFT:I = 0x3

.field public static final SLIDE_RIGHT:I = 0x5

.field public static final SLIDE_TOP:I = 0x30

.field private static sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 700
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelper;->systemSupportsTransitions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    goto :goto_0

    .line 704
    :cond_1
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 884
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static addSharedElement(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 904
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public static addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 858
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 798
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1

    .line 842
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    .line 916
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public static createAutoTransition()Ljava/lang/Object;
    .locals 1

    .line 834
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createAutoTransition()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createChangeBounds(Z)Ljava/lang/Object;
    .locals 1

    .line 761
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createChangeTransform()Ljava/lang/Object;
    .locals 1

    .line 765
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createChangeTransform()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 862
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 1

    .line 908
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 1

    .line 912
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createFadeTransition(I)Ljava/lang/Object;
    .locals 1

    .line 838
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createScale()Ljava/lang/Object;
    .locals 1

    .line 794
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createScale()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1

    .line 757
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createSlide(I)Ljava/lang/Object;
    .locals 1

    .line 790
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createSlide(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createTransitionSet(Z)Ljava/lang/Object;
    .locals 1

    .line 786
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static exclude(Ljava/lang/Object;IZ)V
    .locals 1

    .line 802
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->exclude(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 1

    .line 806
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    return-void
.end method

.method public static excludeChildren(Ljava/lang/Object;IZ)V
    .locals 1

    .line 810
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->excludeChildren(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public static excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 1

    .line 814
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V

    return-void
.end method

.method public static getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 733
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 749
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getExitTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Landroid/support/v17/leanback/transition/TransitionHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;-><init>()V

    return-object v0
.end method

.method public static getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 753
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 741
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 709
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 725
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 729
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    .line 717
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static include(Ljava/lang/Object;I)V
    .locals 1

    .line 818
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->include(Ljava/lang/Object;I)V

    return-void
.end method

.method public static include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 822
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->include(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    .line 866
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1

    .line 846
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public static runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 850
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V
    .locals 1

    .line 782
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V

    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;II)V
    .locals 1

    .line 773
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setChangeBoundsStartDelay(Ljava/lang/Object;II)V

    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1

    .line 769
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1

    .line 778
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public static setDuration(Ljava/lang/Object;J)V
    .locals 1

    .line 830
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setDuration(Ljava/lang/Object;J)V

    return-void
.end method

.method public static setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 1

    .line 870
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnterTransition(Landroid/support/v4/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    .line 889
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 1

    .line 737
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 1

    .line 925
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    return-void
.end method

.method public static setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 1

    .line 874
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static setExitTransition(Landroid/support/v4/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    .line 894
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 854
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 1

    .line 745
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 1

    .line 879
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/support/v4/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    .line 899
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 1

    .line 713
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 1

    .line 721
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    return-void
.end method

.method public static setStartDelay(Ljava/lang/Object;J)V
    .locals 1

    .line 826
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setStartDelay(Ljava/lang/Object;J)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 920
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 941
    sget-object v0, Landroid/support/v17/leanback/transition/TransitionHelper;->sImpl:Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public static systemSupportsEntranceTransitions()Z
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static systemSupportsTransitions()Z
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
