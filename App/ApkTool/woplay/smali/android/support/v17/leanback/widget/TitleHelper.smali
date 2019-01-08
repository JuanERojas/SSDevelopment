.class public Landroid/support/v17/leanback/widget/TitleHelper;
.super Ljava/lang/Object;
.source "TitleHelper.java"


# instance fields
.field private final mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field mSceneRoot:Landroid/view/ViewGroup;

.field private mSceneWithTitle:Ljava/lang/Object;

.field private mSceneWithoutTitle:Ljava/lang/Object;

.field private mTitleDownTransition:Ljava/lang/Object;

.field private mTitleUpTransition:Ljava/lang/Object;

.field mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/support/v17/leanback/widget/TitleHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/TitleHelper$1;-><init>(Landroid/support/v17/leanback/widget/TitleHelper;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    .line 63
    iput-object p2, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleHelper;->createTransitions()V

    return-void

    .line 60
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Views may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTransitions()V
    .locals 2

    .line 68
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleUpTransition:Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleDownTransition:Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/TitleHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/TitleHelper$2;-><init>(Landroid/support/v17/leanback/widget/TitleHelper;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithTitle:Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/TitleHelper$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/TitleHelper$3;-><init>(Landroid/support/v17/leanback/widget/TitleHelper;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithoutTitle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOnFocusSearchListener()Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    return-object v0
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public showTitle(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithTitle:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleDownTransition:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithoutTitle:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleUpTransition:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
