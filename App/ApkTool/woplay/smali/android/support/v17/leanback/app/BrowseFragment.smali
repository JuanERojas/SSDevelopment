.class public Landroid/support/v17/leanback/app/BrowseFragment;
.super Landroid/support/v17/leanback/app/BaseFragment;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;,
        Landroid/support/v17/leanback/app/BrowseFragment$ListRowFragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseFragment$FragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;,
        Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;,
        Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;,
        Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;,
        Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_HEADERS_STATE:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;

.field private static final CURRENT_SELECTED_POSITION:Ljava/lang/String; = "currentSelectedPosition"

.field static DEBUG:Z = false

.field public static final HEADERS_DISABLED:I = 0x3

.field public static final HEADERS_ENABLED:I = 0x1

.field public static final HEADERS_HIDDEN:I = 0x2

.field static final HEADER_SHOW:Ljava/lang/String; = "headerShow"

.field static final HEADER_STACK_INDEX:Ljava/lang/String; = "headerStackIndex"

.field private static final IS_PAGE_ROW:Ljava/lang/String; = "isPageRow"

.field private static final LB_HEADERS_BACKSTACK:Ljava/lang/String; = "lbHeadersBackStack_"

.field static final TAG:Ljava/lang/String; = "BrowseFragment"


# instance fields
.field final EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

.field private mBrandColor:I

.field private mBrandColorSet:Z

.field mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

.field mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

.field mCanShowHeaders:Z

.field private mContainerListAlignTop:I

.field private mContainerListMarginStart:I

.field mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

.field private mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

.field mHeadersBackStackEnabled:Z

.field mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

.field private mHeadersState:I

.field mHeadersTransition:Ljava/lang/Object;

.field mIsPageRow:Z

.field mMainFragment:Landroid/app/Fragment;

.field mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

.field private mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

.field mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

.field mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

.field private mMainFragmentScaleEnabled:Z

.field private final mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private final mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mPageRow:Ljava/lang/Object;

.field private mScaleFactor:F

.field private mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field mSceneWithHeaders:Ljava/lang/Object;

.field mSceneWithoutHeaders:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

.field mShowingHeaders:Z

.field mWithHeadersBackStackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseFragment;

    .line 757
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".headersState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseFragment;-><init>()V

    .line 99
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$1;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 110
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "headerFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 116
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "mainFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 122
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "screenDataReady"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 713
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    const/4 v0, 0x1

    .line 724
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    const/4 v1, 0x0

    .line 725
    iput v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    .line 730
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    .line 732
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 733
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 736
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    const/4 v0, -0x1

    .line 739
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    .line 745
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    .line 1086
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$4;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    .line 1135
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$5;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    .line 1482
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$10;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    .line 1517
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$11;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 772
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 774
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object p1, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z
    .locals 5

    .line 572
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_d

    .line 574
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 580
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid position %d requested"

    new-array v1, v2, [Ljava/lang/Object;

    .line 581
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 586
    :goto_1
    iget-boolean p2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    .line 587
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    .line 588
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v4, :cond_4

    instance-of v4, p1, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    .line 589
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v4, :cond_5

    move-object v1, p1

    :cond_5
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_9

    .line 596
    iget-boolean p2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz p2, :cond_a

    if-nez v0, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 603
    :cond_8
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    if-eq v0, p2, :cond_7

    goto :goto_3

    .line 609
    :cond_9
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    :cond_a
    :goto_3
    if-eqz v2, :cond_c

    .line 614
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;->createFragment(Ljava/lang/Object;)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 615
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    instance-of p1, p1, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;

    if-nez p1, :cond_b

    .line 616
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment must implement MainFragmentAdapterProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_b
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAdapter()V

    :cond_c
    return v2

    :cond_d
    :goto_4
    return v3
.end method

.method private expandMainFragment(Z)V
    .locals 2

    .line 1469
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_0

    .line 1470
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1471
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1474
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAlignment()V

    if-nez p1, :cond_1

    .line 1475
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1477
    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFactor:F

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1478
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutScaleY(F)V

    .line 1479
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setChildScale(F)V

    return-void
.end method

.method private onExpandTransitionStart(ZLjava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1672
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1677
    :cond_0
    new-instance p1, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, p0, p2, v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->execute()V

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1716
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1717
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1719
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1720
    sget-object v0, Landroid/support/v17/leanback/app/BrowseFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersState(I)V

    :cond_2
    return-void
.end method

.method private replaceMainFragment(I)V
    .locals 1

    .line 1555
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0, v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1556
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->swapToMainFragment()V

    .line 1557
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->expandMainFragment(Z)V

    :cond_2
    return-void
.end method

.method private setHeadersOnScreen(Z)V
    .locals 2

    .line 1455
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1457
    :cond_0
    iget p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    neg-int p1, p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1458
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMainFragmentAlignment()V
    .locals 2

    .line 1681
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    .line 1682
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1683
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 1685
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1687
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setAlignment(I)V

    return-void
.end method

.method private swapToMainFragment()V
    .locals 4

    .line 1562
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 1563
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->isShowingHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1567
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    new-instance v3, Landroid/app/Fragment;

    invoke-direct {v3}, Landroid/app/Fragment;-><init>()V

    .line 1568
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1569
    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment$12;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 1585
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1586
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method private updateWrapperPresenter()V
    .locals 6

    .line 809
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-nez v0, :cond_1

    .line 815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter.getPresenterSelector() is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-ne v0, v1, :cond_2

    return-void

    .line 820
    :cond_2
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 822
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    .line 823
    new-instance v2, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;-><init>()V

    .line 824
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/support/v17/leanback/widget/Presenter;

    .line 825
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aput-object v2, v3, v1

    .line 827
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseFragment$2;

    invoke-direct {v4, p0, v0, v2, v3}, Landroid/support/v17/leanback/app/BrowseFragment$2;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/widget/PresenterSelector;Landroid/support/v17/leanback/widget/Presenter;[Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    .line 1771
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createHeadersTransition()V
    .locals 2

    .line 1337
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_in:I

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_out:I

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1341
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseFragment$9;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method createStateMachineStates()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineStates()V

    .line 127
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 132
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineTransitions()V

    .line 134
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 142
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public enableMainFragmentScaling(Z)V
    .locals 0

    .line 1039
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentScaleEnabled:Z

    return-void
.end method

.method public enableRowScaling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1028
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->enableMainFragmentScaling(Z)V

    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 911
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBrandColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 801
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    return v0
.end method

.method public getHeadersFragment()Landroid/support/v17/leanback/app/HeadersFragment;
    .locals 1

    .line 954
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    return-object v0
.end method

.method public getHeadersState()I
    .locals 1

    .line 1766
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    return v0
.end method

.method public getMainFragment()Landroid/app/Fragment;
    .locals 1

    .line 946
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getMainFragmentRegistry()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;
    .locals 1

    .line 904
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 974
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    .line 925
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    .line 935
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1602
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    return v0
.end method

.method public getSelectedRowViewHolder()Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2

    .line 1609
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->getSelectedPosition()I

    move-result v0

    .line 1611
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isFirstRowWithContent(I)Z
    .locals 4

    .line 1427
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1430
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1431
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 1432
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method isFirstRowWithContentOrPageRow(I)Z
    .locals 5

    .line 1414
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1417
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1418
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 1419
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method final isHeadersDataReady()Z
    .locals 1

    .line 1132
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isHeadersTransitionOnBackEnabled()Z
    .locals 1

    .line 1709
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    return v0
.end method

.method public isInHeadersTransition()Z
    .locals 1

    .line 1001
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingHeaders()Z
    .locals 1

    .line 1008
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    return v0
.end method

.method isVerticalScrolling()Z
    .locals 1

    .line 1082
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1189
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1190
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 1191
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1192
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginStart:I

    .line 1193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_start:I

    .line 1194
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1192
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    .line 1195
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginTop:I

    .line 1196
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_top:I

    .line 1197
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1195
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    .line 1198
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1200
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->readArguments(Landroid/os/Bundle;)V

    .line 1202
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    .line 1203
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    if-eqz v0, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lbHeadersBackStack_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 1205
    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    .line 1206
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1207
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->load(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "headerShow"

    .line 1210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1215
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_browse_rows_scale:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFactor:F

    return-void
.end method

.method public onCreateHeadersFragment()Landroid/support/v17/leanback/app/HeadersFragment;
    .locals 1

    .line 1244
    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1251
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->onCreateHeadersFragment()Landroid/support/v17/leanback/app/HeadersFragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1254
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-direct {p0, v0, v3}, Landroid/support/v17/leanback/app/BrowseFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    .line 1255
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1256
    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1258
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    .line 1259
    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1266
    :cond_0
    new-instance v3, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;-><init>(Landroid/app/Fragment;)V

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1267
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;)V

    .line 1270
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 1272
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    .line 1273
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/HeadersFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1274
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz p3, :cond_2

    const-string v0, "isPageRow"

    .line 1277
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz p3, :cond_3

    const-string v0, "currentSelectedPosition"

    .line 1283
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    .line 1285
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAdapter()V

    .line 1288
    :goto_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setHeadersGone(Z)V

    .line 1289
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_4

    .line 1290
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 1292
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 1293
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;)V

    .line 1294
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;)V

    .line 1296
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_browse_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1298
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 1300
    sget v0, Landroid/support/v17/leanback/R$id;->browse_frame:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 1301
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 1302
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 1304
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v17/leanback/app/BrowseFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1306
    sget p1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    .line 1307
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotX(F)V

    .line 1308
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget p3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotY(F)V

    .line 1310
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColorSet:Z

    if-eqz p1, :cond_5

    .line 1311
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget p3, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    invoke-virtual {p1, p3}, Landroid/support/v17/leanback/app/HeadersFragment;->setBackgroundColor(I)V

    .line 1314
    :cond_5
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance p3, Landroid/support/v17/leanback/app/BrowseFragment$6;

    invoke-direct {p3, p0}, Landroid/support/v17/leanback/app/BrowseFragment$6;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {p1, p3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneWithHeaders:Ljava/lang/Object;

    .line 1320
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance p3, Landroid/support/v17/leanback/app/BrowseFragment$7;

    invoke-direct {p3, p0}, Landroid/support/v17/leanback/app/BrowseFragment$7;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {p1, p3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    .line 1326
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance p3, Landroid/support/v17/leanback/app/BrowseFragment$8;

    invoke-direct {p3, p0}, Landroid/support/v17/leanback/app/BrowseFragment$8;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-static {p1, p3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 1230
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1233
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 1220
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    .line 1221
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mPageRow:Ljava/lang/Object;

    .line 1222
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 1223
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1224
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1225
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onDestroyView()V

    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    .line 1795
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1799
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionEnd()V

    :cond_1
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 2

    .line 1782
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionPrepare()Z

    .line 1783
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    .line 1784
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    .line 1789
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionStart()V

    .line 1790
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionStart()V

    return-void
.end method

.method onRowSelected(I)V
    .locals 3

    .line 1530
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->post(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1176
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "currentSelectedPosition"

    .line 1177
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isPageRow"

    .line 1178
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->save(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "headerShow"

    .line 1183
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1651
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStart()V

    .line 1652
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListAlignTop:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->setAlignment(I)V

    .line 1653
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentAlignment()V

    .line 1655
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1656
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1658
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1659
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1660
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1663
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    .line 1664
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->showHeaders(Z)V

    .line 1667
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    .line 1777
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 856
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 857
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateWrapperPresenter()V

    .line 858
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateMainFragmentRowsAdapter()V

    .line 863
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method public setBrandColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 787
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    const/4 p1, 0x1

    .line 788
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColorSet:Z

    .line 790
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz p1, :cond_0

    .line 791
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrandColor:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBrowseTransitionListener(Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    return-void
.end method

.method setEntranceTransitionEndState()V
    .locals 2

    .line 1822
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersOnScreen(Z)V

    const/4 v0, 0x1

    .line 1823
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setSearchOrbViewOnScreen(Z)V

    .line 1824
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    return-void
.end method

.method setEntranceTransitionStartState()V
    .locals 1

    const/4 v0, 0x0

    .line 1814
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersOnScreen(Z)V

    .line 1815
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setSearchOrbViewOnScreen(Z)V

    return-void
.end method

.method public setHeaderPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    .line 1446
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 1447
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz p1, :cond_0

    .line 1448
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_0
    return-void
.end method

.method public setHeadersState(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    sget-boolean v1, Landroid/support/v17/leanback/app/BrowseFragment;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BrowseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeadersState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    if-eq p1, v1, :cond_2

    .line 1738
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersState:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v1, "BrowseFragment"

    .line 1753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown headers state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1749
    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 1750
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    goto :goto_0

    .line 1745
    :pswitch_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 1746
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    goto :goto_0

    .line 1741
    :pswitch_2
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    .line 1742
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1756
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz p1, :cond_2

    .line 1757
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setHeadersGone(Z)V

    :cond_2
    return-void

    .line 1733
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid headers state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setHeadersTransitionOnBackEnabled(Z)V
    .locals 0

    .line 1702
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    return-void
.end method

.method setMainFragmentAdapter()V
    .locals 2

    .line 627
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;

    .line 628
    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    .line 629
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;)V

    .line 630
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    instance-of v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    check-cast v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;

    .line 633
    invoke-interface {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    move-result-object v0

    .line 632
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    .line 637
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    goto :goto_2

    .line 639
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    :goto_2
    return-void
.end method

.method setMainFragmentRowsAdapter(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V
    .locals 2

    .line 867
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-ne p1, v0, :cond_0

    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 877
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    .line 878
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz p1, :cond_2

    .line 879
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentItemViewSelectedListener;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    .line 881
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    .line 884
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateMainFragmentRowsAdapter()V

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    .line 964
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 965
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 918
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method setSearchOrbViewOnScreen(Z)V
    .locals 2

    .line 1805
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1807
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1808
    :cond_0
    iget p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mContainerListMarginStart:I

    neg-int p1, p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1809
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1594
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2

    .line 1620
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->post(IIZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 1

    .line 1638
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterRegistry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 1642
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransition(Z)V

    .line 1644
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1645
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    :cond_2
    return-void
.end method

.method setSelection(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1539
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    .line 1540
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1544
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/HeadersFragment;->setSelectedPosition(IZ)V

    .line 1545
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->replaceMainFragment(I)V

    .line 1547
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1548
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZ)V

    .line 1551
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateTitleViewVisibility()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method showHeaders(Z)V
    .locals 3

    .line 1462
    sget-boolean v0, Landroid/support/v17/leanback/app/BrowseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BrowseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHeaders "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/HeadersFragment;->setHeadersEnabled(Z)V

    .line 1464
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->setHeadersOnScreen(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 1465
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->expandMainFragment(Z)V

    return-void
.end method

.method public startHeadersTransition(Z)V
    .locals 1

    .line 988
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-nez v0, :cond_0

    .line 989
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot start headers transition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 991
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 994
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method startHeadersTransitionInternal(Z)V
    .locals 2

    .line 1043
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1046
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1049
    :cond_1
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    .line 1050
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    .line 1051
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionStart()V

    xor-int/lit8 v0, p1, 0x1

    .line 1052
    new-instance v1, Landroid/support/v17/leanback/app/BrowseFragment$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$3;-><init>(Landroid/support/v17/leanback/app/BrowseFragment;Z)V

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->onExpandTransitionStart(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateMainFragmentRowsAdapter()V
    .locals 2

    .line 892
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->detach()V

    .line 894
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 896
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    .line 899
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentListRowDataAdapter:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_2
    return-void
.end method

.method updateTitleViewVisibility()V
    .locals 3

    .line 1378
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1380
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    goto :goto_0

    .line 1385
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->isFirstRowWithContent(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 1388
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(I)V

    goto :goto_3

    .line 1390
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(Z)V

    goto :goto_3

    .line 1396
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_3

    .line 1397
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    goto :goto_1

    .line 1399
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->isFirstRowWithContent(I)Z

    move-result v0

    .line 1401
    :goto_1
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->isFirstRowWithContentOrPageRow(I)Z

    move-result v2

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x4

    :cond_5
    if-eqz v0, :cond_6

    .line 1406
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(I)V

    goto :goto_3

    .line 1408
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->showTitle(Z)V

    :goto_3
    return-void
.end method
