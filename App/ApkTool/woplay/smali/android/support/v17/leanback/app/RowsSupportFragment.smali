.class public Landroid/support/v17/leanback/app/RowsSupportFragment;
.super Landroid/support/v17/leanback/app/BaseRowSupportFragment;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;
.implements Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;
    }
.end annotation


# static fields
.field static final ALIGN_TOP_NOT_SET:I = -0x80000000

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "RowsSupportFragment"


# instance fields
.field mAfterEntranceTransition:Z

.field private mAlignedTop:I

.field private final mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mExpand:Z

.field mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mFreezeRows:Z

.field private mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

.field private mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

.field mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private mPresenterMapper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field mSelectAnimatorDuration:I

.field mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

.field private mSubPosition:I

.field mViewsCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    const/high16 v1, -0x80000000

    .line 144
    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    .line 145
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    .line 155
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    .line 329
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method private freezeRows(Z)V
    .locals 5

    .line 460
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mFreezeRows:Z

    .line 461
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 466
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 467
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 468
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v3

    .line 469
    invoke-virtual {v4, v3, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 542
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method static setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V
    .locals 1

    .line 319
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    return-void
.end method

.method static setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V
    .locals 1

    .line 324
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;

    .line 325
    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->animateSelect(ZZ)V

    .line 326
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    return-void
.end method


# virtual methods
.method public enableRowScaling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 164
    sget v0, Landroid/support/v17/leanback/R$id;->container_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object p1
.end method

.method public findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    .line 579
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 582
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 583
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 582
    invoke-static {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 279
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_rows_fragment:I

    return v0
.end method

.method public getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    return-object v0
.end method

.method public getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowViewHolder(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    .line 269
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 273
    invoke-static {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .line 546
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 549
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$integer;->lb_browse_rows_anim_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorDuration:I

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    .line 311
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onDestroyView()V

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    .line 242
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSubPosition:I

    if-eq p1, p4, :cond_2

    .line 245
    :cond_0
    iput p4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSubPosition:I

    .line 246
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {p1, v1, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 249
    :cond_1
    check-cast p2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object p2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 250
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {p1, v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 256
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-eqz p1, :cond_4

    .line 257
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    if-gtz p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;->showTitleView(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    .line 455
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionEnd()V

    const/4 v0, 0x0

    .line 456
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->freezeRows(Z)V

    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 2

    .line 446
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 448
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->freezeRows(Z)V

    :cond_0
    return v0
.end method

.method public bridge synthetic onTransitionStart()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 292
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentViewId(I)V

    .line 296
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSaveChildrenPolicy(I)V

    .line 298
    iget p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAlignment(I)V

    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 301
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    .line 302
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;

    invoke-interface {p1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;->notifyViewCreated(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V

    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 3

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    return-void

    .line 557
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    .line 558
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 562
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    const/4 v2, 0x1

    .line 564
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetWithPadding(Z)V

    .line 565
    iget v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAlignedTop:I

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 567
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 569
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    :cond_1
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 5

    .line 479
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    .line 480
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 485
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 486
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 487
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    .line 488
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v3, v2, v4}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 4

    .line 201
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 209
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 210
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    invoke-static {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0

    .line 315
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 1

    .line 174
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 175
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    if-eqz p1, :cond_0

    .line 176
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Item clicked listener must be set before views are created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 4

    .line 219
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 220
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 224
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 226
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 227
    invoke-static {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 2

    .line 506
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 516
    new-instance v1, Landroid/support/v17/leanback/app/RowsSupportFragment$2;

    invoke-direct {v1, p0, p3}, Landroid/support/v17/leanback/app/RowsSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 531
    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    :goto_0
    return-void
.end method

.method setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 410
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 411
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 413
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_2

    .line 414
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    .line 416
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v1, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 423
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object p1

    .line 424
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getPresenterMapper()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    goto :goto_1

    .line 427
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mPresenterMapper:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenterMapper(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 434
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    .line 438
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    :cond_0
    return-void
.end method
