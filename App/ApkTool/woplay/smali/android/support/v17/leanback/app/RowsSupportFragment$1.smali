.class Landroid/support/v17/leanback/app/RowsSupportFragment$1;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "RowsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 369
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExpand:Z

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    .line 370
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 371
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 372
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 375
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/RowsSupportFragment;->mFreezeRows:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 4

    .line 340
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setClipChildren(Z)V

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 346
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    .line 347
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v0, v3, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;-><init>(Landroid/support/v17/leanback/app/RowsSupportFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->setExtraObject(Ljava/lang/Object;)V

    .line 351
    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 352
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 355
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 356
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 385
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 386
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 402
    invoke-static {p1, v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 403
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method
