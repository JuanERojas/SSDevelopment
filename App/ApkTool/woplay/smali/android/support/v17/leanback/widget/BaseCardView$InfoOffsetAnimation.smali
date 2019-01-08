.class final Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;
.super Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoOffsetAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V
    .locals 0

    .line 920
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 921
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    sub-float/2addr p3, p2

    .line 922
    iput p3, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 927
    iget-object p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    iput v0, p2, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 928
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    return-void
.end method
