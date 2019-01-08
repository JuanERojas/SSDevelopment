.class final Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;
.super Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoHeightAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V
    .locals 0

    .line 938
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    .line 939
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    sub-float/2addr p3, p2

    .line 940
    iput p3, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 945
    iget-object p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    iput v0, p2, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 946
    iget-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    return-void
.end method
