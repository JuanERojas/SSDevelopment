.class public abstract Landroid/support/v17/leanback/widget/RowPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;
    }
.end annotation


# static fields
.field public static final SYNC_ACTIVATED_CUSTOM:I = 0x0

.field public static final SYNC_ACTIVATED_TO_EXPANDED:I = 0x1

.field public static final SYNC_ACTIVATED_TO_EXPANDED_AND_SELECTED:I = 0x3

.field public static final SYNC_ACTIVATED_TO_SELECTED:I = 0x2


# instance fields
.field private mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

.field mSelectEffectEnabled:Z

.field mSyncActivatePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 319
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 310
    new-instance v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    .line 313
    iput v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    .line 320
    iget-object v1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setNullItemVisibilityGone(Z)V

    return-void
.end method

.method private updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 453
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 461
    :pswitch_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_1

    .line 458
    :pswitch_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_1

    .line 455
    :pswitch_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    .line 464
    :goto_1
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->syncActivatedStatus(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/RowContainerView;

    .line 518
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowContainerView;->showHeader(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.end method

.method protected dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 498
    iget-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz p2, :cond_0

    .line 499
    iget-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v1, p1, v0}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public final getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    return-object v0
.end method

.method public final getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    .line 405
    instance-of v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_0

    .line 406
    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    return-object p1

    .line 408
    :cond_0
    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    return-object p1
.end method

.method public final getSelectEffectEnabled()Z
    .locals 1

    .line 577
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return v0
.end method

.method public final getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F
    .locals 0

    .line 538
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    iget p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    return p1
.end method

.method public final getSyncActivatePolicy()I
    .locals 1

    .line 486
    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    return v0
.end method

.method protected initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    .line 373
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isClippingChildren()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 378
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_1

    .line 379
    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    return-void
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final needsDefaultSelectEffect()Z
    .locals 1

    .line 590
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final needsRowContainerView()Z
    .locals 1

    .line 594
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->needsDefaultSelectEffect()Z

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

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 609
    iput-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    .line 610
    instance-of v0, p2, Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Row;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 611
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 325
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    .line 328
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->needsRowContainerView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    new-instance v1, Landroid/support/v17/leanback/widget/RowContainerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/widget/RowContainerView;-><init>(Landroid/content/Context;)V

    .line 330
    iget-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 332
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iput-object p1, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    .line 334
    :cond_0
    new-instance p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    invoke-direct {p1, v1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;-><init>(Landroid/support/v17/leanback/widget/RowContainerView;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 338
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 339
    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    if-nez v0, :cond_2

    .line 340
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "super.initializeRowViewHolder() must be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p1
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 643
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    .line 657
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 660
    :cond_0
    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/RowPresenter;->cancelAnimationsRecursive(Landroid/view/View;)V

    return-void
.end method

.method protected onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 444
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 445
    iget-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 510
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 511
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 512
    iget-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    .line 550
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    iget v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    .line 552
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget v2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    .line 555
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/RowContainerView;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    .line 557
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 556
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowContainerView;->setForegroundColor(I)V

    :cond_1
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    .line 627
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    const/4 v0, 0x0

    .line 630
    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 631
    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    return-void
.end method

.method public final onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    .line 618
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    .line 636
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    .line 681
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 683
    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V
    .locals 0

    .line 389
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    return-void
.end method

.method public final setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 420
    iput-boolean p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mExpanded:Z

    .line 421
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void
.end method

.method public final setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 432
    iput-boolean p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelected:Z

    .line 433
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void
.end method

.method public final setSelectEffectEnabled(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return-void
.end method

.method public final setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V
    .locals 0

    .line 528
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 529
    iput p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    .line 530
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final setSyncActivatePolicy(I)V
    .locals 0

    .line 475
    iput p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    return-void
.end method
