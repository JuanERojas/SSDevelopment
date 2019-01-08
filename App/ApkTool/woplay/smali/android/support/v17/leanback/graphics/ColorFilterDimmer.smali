.class public final Landroid/support/v17/leanback/graphics/ColorFilterDimmer;
.super Ljava/lang/Object;
.source "ColorFilterDimmer.java"


# instance fields
.field private final mActiveLevel:F

.field private final mColorDimmer:Landroid/support/v17/leanback/graphics/ColorFilterCache;

.field private final mDimmedLevel:F

.field private mFilter:Landroid/graphics/ColorFilter;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorFilterCache;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    cmpl-float v1, p3, p1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    cmpg-float p3, p1, v0

    if-gez p3, :cond_3

    const/4 p1, 0x0

    .line 79
    :cond_3
    iput p2, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mActiveLevel:F

    .line 80
    iput p1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mDimmedLevel:F

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static create(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)Landroid/support/v17/leanback/graphics/ColorFilterDimmer;
    .locals 1

    .line 70
    new-instance v0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;-><init>(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)V

    return-object v0
.end method

.method public static createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorFilterDimmer;
    .locals 7

    .line 46
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimMaskColor:I

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$color;->lb_view_dim_mask_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 50
    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimActiveLevel:I

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$fraction;->lb_view_active_level:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    .line 50
    invoke-virtual {v0, v2, v5, v5, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    .line 52
    sget v3, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimDimmedLevel:I

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Landroid/support/v17/leanback/R$fraction;->lb_view_dimmed_level:I

    invoke-virtual {p0, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    .line 52
    invoke-virtual {v0, v3, v5, v5, p0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;

    invoke-static {v1}, Landroid/support/v17/leanback/graphics/ColorFilterCache;->getColorFilterCache(I)Landroid/support/v17/leanback/graphics/ColorFilterCache;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;-><init>(Landroid/support/v17/leanback/graphics/ColorFilterCache;FF)V

    return-object v0
.end method


# virtual methods
.method public applyFilterToView(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 93
    iget-object v1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 100
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setActiveLevel(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorFilterCache;

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mDimmedLevel:F

    iget v2, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mActiveLevel:F

    iget v3, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mDimmedLevel:F

    sub-float/2addr v2, v3

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/ColorFilterCache;->getFilterForLevel(F)Landroid/graphics/ColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    .line 114
    iget-object p1, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterDimmer;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
