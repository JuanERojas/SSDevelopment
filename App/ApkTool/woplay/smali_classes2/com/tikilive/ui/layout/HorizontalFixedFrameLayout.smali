.class public Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HorizontalFixedFrameLayout.java"


# static fields
.field private static final DEFAULT_WIDTH_RATIO:I = 0x3


# instance fields
.field private widthRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/tikilive/ui/R$styleable;->HorizontalFixedFrameLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 44
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
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

    .line 19
    iget v0, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-double v0, p1

    .line 53
    iget p1, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    double-to-int p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 54
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setWidthRatio(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/tikilive/ui/layout/HorizontalFixedFrameLayout;->widthRatio:I

    return-void
.end method
