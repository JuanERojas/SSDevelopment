.class public Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MainMenuItemFrameLayout.java"


# static fields
.field private static final DEFAULT_WIDTH_RATIO:I = 0x3


# instance fields
.field private padding:F

.field private widthRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->padding:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->padding:F

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->padding:F

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/tikilive/ui/R$styleable;->MainMenuItemFrameLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x3

    .line 45
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->padding:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getWidthRatio()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 55
    iget v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->padding:F

    float-to-int v1, v1

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->padding:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 56
    iget v0, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    div-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float v0, p1

    const v1, 0x3fc2192e

    mul-float v0, v0, v1

    float-to-double v2, v0

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    sub-int/2addr v0, p1

    .line 58
    iget v2, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    div-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    sub-int/2addr p1, v0

    int-to-float v0, p1

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 64
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 70
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setWidthRatio(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/tikilive/ui/welcome/MainMenuItemFrameLayout;->widthRatio:I

    return-void
.end method
