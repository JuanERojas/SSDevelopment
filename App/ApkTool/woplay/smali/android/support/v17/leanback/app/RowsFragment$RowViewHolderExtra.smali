.class final Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;
.super Ljava/lang/Object;
.source "RowsFragment.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RowViewHolderExtra"
.end annotation


# instance fields
.field final mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

.field final mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mSelectAnimator:Landroid/animation/TimeAnimator;

.field mSelectAnimatorDurationInUse:I

.field mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

.field mSelectLevelAnimDelta:F

.field mSelectLevelAnimStart:F

.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance p1, Landroid/animation/TimeAnimator;

    invoke-direct {p1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    .line 98
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter;

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    .line 99
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 100
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method animateSelect(ZZ)V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 129
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    .line 130
    :cond_1
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 131
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget p2, p2, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    iput p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    .line 132
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    .line 133
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    .line 134
    iget p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    .line 135
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    .line 105
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->updateSelect(JJ)V

    :cond_0
    return-void
.end method

.method updateSelect(JJ)V
    .locals 1

    .line 112
    iget p3, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long p3, p3

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 114
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/TimeAnimator;->end()V

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    .line 116
    iget p3, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    .line 118
    :goto_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_1

    .line 119
    iget-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 121
    :cond_1
    iget p2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget p3, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    .line 122
    iget-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object p3, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p1, p3, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    return-void
.end method
