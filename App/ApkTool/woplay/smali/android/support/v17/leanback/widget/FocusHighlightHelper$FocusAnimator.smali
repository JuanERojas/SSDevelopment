.class Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusAnimator"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/TimeAnimator;

.field private final mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

.field private final mDuration:I

.field private mFocusLevel:F

.field private mFocusLevelDelta:F

.field private mFocusLevelStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScaleDiff:F

.field private final mView:Landroid/view/View;

.field private final mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;


# direct methods
.method constructor <init>(Landroid/view/View;FZI)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    .line 67
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    .line 68
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    .line 85
    iput p4, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p2, p4

    .line 86
    iput p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mScaleDiff:F

    .line 87
    instance-of p2, p1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 88
    move-object p2, p1

    check-cast p2, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    goto :goto_0

    .line 90
    :cond_0
    iput-object p4, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    .line 92
    :goto_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    goto :goto_1

    .line 96
    :cond_1
    iput-object p4, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    :goto_1
    return-void
.end method


# virtual methods
.method animateFocus(ZZ)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->endAnimation()V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    goto :goto_1

    .line 76
    :cond_1
    iget p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 77
    iget p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    iput p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    .line 78
    iget p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelDelta:F

    .line 79
    iget-object p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method endAnimation()V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    return-void
.end method

.method getFocusLevel()F
    .locals 1

    .line 122
    iget v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    return v0
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    .line 132
    iget p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    int-to-long p4, p1

    cmp-long p1, p2, p4

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 134
    iget-object p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/TimeAnimator;->end()V

    goto :goto_0

    :cond_0
    long-to-double p1, p2

    .line 136
    iget p3, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    int-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    .line 138
    :goto_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_1

    .line 139
    iget-object p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 141
    :cond_1
    iget p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    iget p3, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelDelta:F

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    return-void
.end method

.method setFocusLevel(F)V
    .locals 2

    .line 101
    iput p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    .line 102
    iget v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mScaleDiff:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 103
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 104
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setShadowFocusLevel(F)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V

    .line 110
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    .line 112
    iget-object p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 113
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setOverlayColor(I)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method
