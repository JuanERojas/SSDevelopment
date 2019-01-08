.class public Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# static fields
.field static final ADJUST_DIMENSION_HEIGHT:I = 0x0

.field static final ADJUST_DIMENSION_WIDTH:I = 0x1

.field private static final DEFAULT_ADJUST_DIMENSION:I = 0x0

.field private static final DEFAULT_ASPECT_RATIO:F = 1.0f


# instance fields
.field private aspectRatio:D

.field private dimensionToAdjust:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v0, Lcom/twitter/sdk/android/core/R$styleable;->tw__AspectRatioImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    :try_start_0
    sget p2, Lcom/twitter/sdk/android/core/R$styleable;->tw__AspectRatioImageView_tw__image_aspect_ratio:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->aspectRatio:D

    .line 53
    sget p2, Lcom/twitter/sdk/android/core/R$styleable;->tw__AspectRatioImageView_tw__image_dimension_to_adjust:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->dimensionToAdjust:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method calculateHeight(ID)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-double v0, p1

    div-double/2addr v0, p2

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method calculateWidth(ID)I
    .locals 2

    int-to-double v0, p1

    mul-double v0, v0, p2

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getAspectRatio()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->aspectRatio:D

    return-wide v0
.end method

.method public getDimensionToAdjust()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->dimensionToAdjust:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 92
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->getMeasuredWidth()I

    move-result p1

    .line 93
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->getMeasuredHeight()I

    move-result p2

    .line 94
    iget v0, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->dimensionToAdjust:I

    if-nez v0, :cond_0

    .line 95
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->aspectRatio:D

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->calculateHeight(ID)I

    move-result p2

    goto :goto_0

    .line 97
    :cond_0
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->aspectRatio:D

    invoke-virtual {p0, p2, v0, v1}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->calculateWidth(ID)I

    move-result p1

    .line 99
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetSize()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 84
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->measure(II)V

    .line 86
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->layout(IIII)V

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/internal/util/AspectRatioImageView;->aspectRatio:D

    return-void
.end method
