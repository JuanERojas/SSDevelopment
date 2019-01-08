.class final Landroid/support/v17/leanback/transition/TransitionHelperKitkat;
.super Ljava/lang/Object;
.source "TransitionHelperKitkat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 241
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    return-void
.end method

.method static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p0, Landroid/transition/TransitionSet;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-void
.end method

.method static addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 192
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    .line 193
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;-><init>(Landroid/support/v17/leanback/transition/TransitionListener;)V

    iput-object v0, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    .line 220
    iget-object p1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast p1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method static createAutoTransition()Ljava/lang/Object;
    .locals 1

    .line 59
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    return-object v0
.end method

.method static createChangeBounds(Z)Ljava/lang/Object;
    .locals 1

    .line 135
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;-><init>()V

    .line 136
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->setReparent(Z)V

    return-object v0
.end method

.method static createFadeTransition(I)Ljava/lang/Object;
    .locals 1

    .line 74
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p0}, Landroid/transition/Fade;-><init>(I)V

    return-object v0
.end method

.method static createScale()Ljava/lang/Object;
    .locals 1

    .line 69
    new-instance v0, Landroid/support/v17/leanback/transition/Scale;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/Scale;-><init>()V

    return-object v0
.end method

.method static createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1

    .line 42
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    .line 43
    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static createSlide(I)Ljava/lang/Object;
    .locals 1

    .line 63
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat;-><init>()V

    .line 64
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    return-object v0
.end method

.method static createTransitionSet(Z)Ljava/lang/Object;
    .locals 1

    .line 48
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method static exclude(Ljava/lang/Object;IZ)V
    .locals 0

    .line 165
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    return-void
.end method

.method static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    .line 169
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    return-void
.end method

.method static excludeChildren(Ljava/lang/Object;IZ)V
    .locals 0

    .line 173
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeChildren(IZ)Landroid/transition/Transition;

    return-void
.end method

.method static excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    .line 177
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    return-void
.end method

.method static include(Ljava/lang/Object;I)V
    .locals 0

    .line 181
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    return-void
.end method

.method static include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 185
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    return-void
.end method

.method static loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method static removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 224
    iget-object v0, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    .line 228
    iget-object v0, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v0, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/4 p0, 0x0

    .line 229
    iput-object p0, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p0, Landroid/transition/Scene;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method

.method static setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V
    .locals 0

    .line 153
    check-cast p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->setDefaultStartDelay(I)V

    return-void
.end method

.method static setChangeBoundsStartDelay(Ljava/lang/Object;II)V
    .locals 0

    .line 141
    check-cast p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->setStartDelay(II)V

    return-void
.end method

.method static setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 145
    check-cast p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->setStartDelay(Landroid/view/View;I)V

    return-void
.end method

.method static setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 149
    check-cast p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->setStartDelay(Ljava/lang/String;I)V

    return-void
.end method

.method static setDuration(Ljava/lang/Object;J)V
    .locals 0

    .line 161
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    return-void
.end method

.method static setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p0, Landroid/transition/Transition;

    check-cast p1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    return-void
.end method

.method static setStartDelay(Ljava/lang/Object;J)V
    .locals 0

    .line 157
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    return-void
.end method
