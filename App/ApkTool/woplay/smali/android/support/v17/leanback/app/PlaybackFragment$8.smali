.class Landroid/support/v17/leanback/app/PlaybackFragment$8;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;->loadControlRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 0

    .line 536
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 539
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    .line 543
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 547
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 551
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 552
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/PlaybackFragment;->mAnimationTranslateY:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
