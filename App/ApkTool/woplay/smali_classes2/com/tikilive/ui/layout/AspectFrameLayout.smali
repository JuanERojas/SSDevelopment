.class public Lcom/tikilive/ui/layout/AspectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectFrameLayout.java"


# static fields
.field private static final DEFAULT_XRATIO:I = 0x10

.field private static final DEFAULT_YRATIO:I = 0x9


# instance fields
.field private xRatio:I

.field private yRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    const/16 v0, 0x9

    .line 19
    iput v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/tikilive/ui/layout/AspectFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    const/16 v0, 0x9

    .line 19
    iput v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/tikilive/ui/layout/AspectFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    const/16 v0, 0x9

    .line 19
    iput v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/tikilive/ui/layout/AspectFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/tikilive/ui/R$styleable;->AspectFrameLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x10

    .line 55
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    const/4 p2, 0x1

    const/16 p3, 0x9

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getXRatio()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    return v0
.end method

.method public getYRatio()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 68
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_1

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_1

    .line 71
    :cond_0
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    int-to-double v0, v2

    iget p2, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget p2, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    int-to-double v2, p2

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 73
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    :cond_1
    if-ne v1, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-nez v0, :cond_3

    :cond_2
    int-to-double p1, v3

    .line 76
    iget v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    int-to-double v0, v0

    div-double/2addr p1, v0

    iget v0, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    int-to-double v0, v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 78
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 81
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setXRatio(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->xRatio:I

    return-void
.end method

.method public setYRatio(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tikilive/ui/layout/AspectFrameLayout;->yRatio:I

    return-void
.end method
