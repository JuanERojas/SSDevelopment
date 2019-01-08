.class public Landroid/support/v17/leanback/app/VerticalGridFragment;
.super Landroid/support/v17/leanback/app/BaseFragment;
.source "VerticalGridFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VerticalGF"


# instance fields
.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private final mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

.field mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    .line 60
    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/VerticalGridFragment$1;-><init>(Landroid/support/v17/leanback/app/VerticalGridFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 116
    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/VerticalGridFragment$2;-><init>(Landroid/support/v17/leanback/app/VerticalGridFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 131
    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/VerticalGridFragment$3;-><init>(Landroid/support/v17/leanback/app/VerticalGridFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method private setupFocusSearchListener()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->grid_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 212
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/TitleHelper;->getOnFocusSearchListener()Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 240
    iget v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    .line 248
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_vertical_grid_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineStates()V

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 75
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineTransitions()V

    .line 76
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getGridPresenter()Landroid/support/v17/leanback/widget/VerticalGridPresenter;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method gridOnItemSelected(I)V
    .locals 1

    .line 149
    iget v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    .line 150
    iput p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    .line 151
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->showOrHideTitle()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 187
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_vertical_grid_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 189
    sget v0, Landroid/support/v17/leanback/R$id;->grid_frame:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v17/leanback/app/VerticalGridFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 193
    sget p1, Landroid/support/v17/leanback/R$id;->browse_grid_dock:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 194
    iget-object p3, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {p3, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 195
    iget-object p3, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object p3, p3, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    iget-object p3, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p3

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    invoke-virtual {p3, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V

    .line 198
    new-instance p3, Landroid/support/v17/leanback/app/VerticalGridFragment$4;

    invoke-direct {p3, p0}, Landroid/support/v17/leanback/app/VerticalGridFragment$4;-><init>(Landroid/support/v17/leanback/app/VerticalGridFragment;)V

    invoke-static {p1, p3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->updateAdapter()V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 1

    .line 223
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 217
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStart()V

    .line 218
    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->setupFocusSearchListener()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    .line 105
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 106
    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->updateAdapter()V

    return-void
.end method

.method setEntranceTransitionState(Z)V
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V

    return-void
.end method

.method public setGridPresenter(Landroid/support/v17/leanback/widget/VerticalGridPresenter;)V
    .locals 1

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Grid presenter may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    .line 88
    iget-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    .line 89
    iget-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    :cond_1
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    .line 171
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 172
    iget-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 231
    iput p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    :cond_0
    return-void
.end method

.method showOrHideTitle()V
    .locals 2

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasPreviousViewInSameRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->showTitle(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->showTitle(Z)V

    :goto_0
    return-void
.end method
