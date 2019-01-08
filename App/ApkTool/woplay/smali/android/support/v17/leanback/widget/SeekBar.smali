.class public final Landroid/support/v17/leanback/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;
    }
.end annotation


# instance fields
.field private mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

.field private mActiveBarHeight:I

.field private mActiveRadius:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundRect:Landroid/graphics/RectF;

.field private mBarHeight:I

.field private final mKnobPaint:Landroid/graphics/Paint;

.field private mKnobx:I

.field private mMax:I

.field private mProgress:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRect:Landroid/graphics/RectF;

.field private mSecondProgress:I

.field private final mSecondProgressPaint:Landroid/graphics/Paint;

.field private final mSecondProgressRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 58
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    .line 59
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 60
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    .line 61
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 63
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/SeekBar;->setWillNotDraw(Z)V

    .line 79
    iget-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_progressbar_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_progressbar_active_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveBarHeight:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_progressbar_active_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    return-void
.end method

.method private calculate()V
    .locals 8

    .line 201
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveBarHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    .line 203
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getWidth()I

    move-result v1

    .line 204
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    .line 205
    div-int/lit8 v0, v0, 0x2

    .line 207
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v0

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v2, v2, 0x2

    :goto_1
    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 212
    iget v3, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgress:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float v3, v3, v1

    .line 213
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v3

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgress:I

    int-to-float v4, v4

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float v4, v4, v1

    .line 217
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v1, v6, v5, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-int v0, v3

    add-int/2addr v2, v0

    .line 220
    iput v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobx:I

    .line 221
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 226
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 168
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgress:I

    return v0
.end method

.method public getSecondProgress()I
    .locals 1

    .line 175
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v0, v0, 0x2

    .line 132
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    iget v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 119
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 125
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;->onAccessibilitySeekBackward()Z

    move-result p1

    return p1

    .line 238
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;->onAccessibilitySeekForward()Z

    move-result p1

    return p1

    .line 243
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilitySeekListener(Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    return-void
.end method

.method public setActiveBarHeight(I)V
    .locals 0

    .line 111
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveBarHeight:I

    .line 112
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setActiveRadius(I)V
    .locals 0

    .line 95
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    .line 96
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 103
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    .line 104
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 189
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    .line 190
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 142
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    if-le p1, v0, :cond_0

    .line 143
    iget p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 147
    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgress:I

    .line 148
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 155
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    if-le p1, v0, :cond_0

    .line 156
    iget p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 160
    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgress:I

    .line 161
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method
