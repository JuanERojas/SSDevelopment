.class public final Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
.super Ljava/lang/Object;
.source "ColorOverlayDimmer.java"


# instance fields
.field private final mActiveLevel:F

.field private mAlpha:I

.field private mAlphaFloat:F

.field private final mDimmedLevel:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(IFF)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    const/4 p2, 0x0

    :cond_1
    cmpl-float v2, p3, v0

    if-lez v2, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    cmpg-float v2, p3, v1

    if-gez v2, :cond_3

    const/4 p3, 0x0

    .line 74
    :cond_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    .line 75
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 76
    iget-object v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iput p2, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    .line 78
    iput p3, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    .line 79
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    return-void
.end method

.method public static createColorOverlayDimmer(IFF)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
    .locals 1

    .line 66
    new-instance v0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;-><init>(IFF)V

    return-object v0
.end method

.method public static createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
    .locals 7

    .line 42
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimMaskColor:I

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$color;->lb_view_dim_mask_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 46
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimActiveLevel:I

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$fraction;->lb_view_active_level:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    .line 46
    invoke-virtual {v0, v2, v5, v5, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 48
    sget v3, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimDimmedLevel:I

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Landroid/support/v17/leanback/R$fraction;->lb_view_dimmed_level:I

    invoke-virtual {p0, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    .line 48
    invoke-virtual {v0, v3, v5, v5, p0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    new-instance v0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-direct {v0, v1, v2, p0}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;-><init>(IFF)V

    return-object v0
.end method


# virtual methods
.method public applyToColor(I)I
    .locals 4

    .line 132
    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 133
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 134
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 135
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    .line 136
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 133
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public drawColorOverlay(Landroid/graphics/Canvas;Landroid/view/View;Z)V
    .locals 6

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    neg-float v0, v0

    neg-float v1, v1

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_0

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float v1, p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float v2, p3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    int-to-float v3, p3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p3, v0

    int-to-float v1, p3

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p3, v0

    int-to-float v2, p3

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float v3, p3

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float v4, p3

    iget-object v5, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    return v0
.end method

.method public getAlphaFloat()F
    .locals 1

    .line 113
    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public needsDraw()Z
    .locals 1

    .line 98
    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActiveLevel(F)V
    .locals 3

    .line 89
    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    iget v2, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    sub-float/2addr v1, v2

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    .line 90
    iget p1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    .line 91
    iget-object p1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
