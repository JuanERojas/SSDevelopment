.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadControlRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    .line 529
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 532
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 540
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 544
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 545
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAnimationTranslateY:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
