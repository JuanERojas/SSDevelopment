.class Landroid/support/v17/leanback/app/RowsFragment$1;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;)V
    .locals 0

    .line 335
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 374
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    .line 375
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 376
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 377
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 380
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsFragment;->mFreezeRows:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 382
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 4

    .line 345
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setClipChildren(Z)V

    .line 350
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 351
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    .line 352
    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v0, v3, p1}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;-><init>(Landroid/support/v17/leanback/app/RowsFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->setExtraObject(Ljava/lang/Object;)V

    .line 356
    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 361
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 362
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 363
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 389
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 390
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 391
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 407
    invoke-static {p1, v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 408
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method
