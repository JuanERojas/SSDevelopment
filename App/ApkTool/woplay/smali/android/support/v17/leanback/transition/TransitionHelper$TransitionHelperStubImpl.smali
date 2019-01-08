.class Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;
.super Ljava/lang/Object;
.source "TransitionHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionHelperStubImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1

    .line 362
    check-cast p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    .line 363
    iget-object v0, p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    .line 366
    :cond_0
    iget-object p1, p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public createAutoTransition()Ljava/lang/Object;
    .locals 1

    .line 264
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createChangeBounds(Z)Ljava/lang/Object;
    .locals 0

    .line 274
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public createChangeTransform()Ljava/lang/Object;
    .locals 1

    .line 279
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 0

    .line 284
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 0

    .line 289
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public createFadeTransition(I)Ljava/lang/Object;
    .locals 0

    .line 269
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public createScale()Ljava/lang/Object;
    .locals 1

    .line 299
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public createSlide(I)Ljava/lang/Object;
    .locals 0

    .line 294
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public createTransitionSet(Z)Ljava/lang/Object;
    .locals 0

    .line 321
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public exclude(Ljava/lang/Object;IZ)V
    .locals 0

    return-void
.end method

.method public exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public excludeChildren(Ljava/lang/Object;IZ)V
    .locals 0

    return-void
.end method

.method public excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public include(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 0

    .line 411
    new-instance p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {p1}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object p1
.end method

.method public removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 1

    .line 371
    check-cast p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    .line 372
    iget-object v0, p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 373
    iget-object p1, p1, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 379
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 382
    iget-object v4, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v4, p2}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionStart(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_0
    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 387
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz v0, :cond_2

    .line 389
    iget-object p1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 390
    iget-object p1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    .line 391
    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v2, p2}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionEnd(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public setChangeBoundsStartDelay(Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setDuration(Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 0

    return-void
.end method

.method public setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setStartDelay(Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    return-void
.end method
