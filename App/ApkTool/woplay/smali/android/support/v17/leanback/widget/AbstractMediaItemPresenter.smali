.class public abstract Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "AbstractMediaItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
    }
.end annotation


# static fields
.field public static final PLAY_STATE_INITIAL:I = 0x0

.field public static final PLAY_STATE_PAUSED:I = 0x1

.field public static final PLAY_STATE_PLAYING:I = 0x2

.field static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mMediaRowSeparator:Z

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    .line 93
    new-instance v0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 108
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method

.method static calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I
    .locals 2

    .line 537
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->getMediaPlayState(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 548
    :pswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object p0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    .line 549
    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result p0

    :goto_0
    move v1, p0

    goto :goto_1

    .line 544
    :pswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object p0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    .line 545
    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object p0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    .line 541
    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;
    .locals 16

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    .line 589
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 590
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 592
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    .line 607
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    .line 608
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 609
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 612
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 614
    sget-object v6, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v12, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 615
    sget-object v6, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v6, 0x2

    if-eqz p3, :cond_3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 618
    sget-object v3, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    add-int/2addr v9, v11

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 619
    sget-object v3, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/2addr v1, v6

    sub-int/2addr v9, v1

    iput v9, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 621
    :cond_2
    sget-object v3, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v3, Landroid/graphics/Rect;->left:I

    .line 622
    sget-object v3, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/2addr v1, v6

    add-int/2addr v9, v1

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 625
    :cond_3
    :goto_1
    sget-object v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 626
    sget-object v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 627
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v1, v13

    int-to-float v14, v1

    .line 628
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v11

    int-to-float v12, v1

    cmpl-float v1, v12, v5

    if-nez v1, :cond_4

    cmpl-float v1, v14, v5

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v1, v4, v5

    if-nez v1, :cond_5

    .line 635
    iput v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 636
    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 637
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 640
    :cond_5
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 641
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 642
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 644
    new-instance v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;

    move-object v9, v1

    move-object/from16 v15, p0

    invoke-direct/range {v9 .. v15}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IFIFLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 654
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    .line 426
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    iget v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 431
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_row_media_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 432
    new-instance v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 433
    iput-object p0, v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    .line 434
    iget-boolean p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    if-eqz p1, :cond_1

    .line 435
    iget-object p1, v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaRowView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-object v0
.end method

.method public getActionPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method protected getMediaPlayState(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getThemeId()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    return v0
.end method

.method public hasMediaRowSeparator()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    return v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 2

    .line 529
    invoke-static {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 530
    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 531
    iget-object p1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method

.method protected onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    .line 470
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->onBindRowActions()V

    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 452
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 454
    check-cast p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 456
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    .line 458
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemRowSeparator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->hasMediaRowSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    .line 462
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method protected onUnbindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onUnbindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setActionPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0

    .line 137
    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    .line 481
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    return-void
.end method

.method public setHasMediaRowSeparator(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    return-void
.end method

.method public setThemeId(I)V
    .locals 0

    .line 118
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    return-void
.end method
