.class public Lcom/tikilive/ui/video/GridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "GridLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private hitBorder(II)Z
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/tikilive/ui/video/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 111
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 112
    rem-int/2addr p1, v0

    add-int/2addr p1, p2

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    add-int/2addr p1, p2

    if-gez p1, :cond_3

    if-lt p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method protected calcOffsetToNextView(I)I
    .locals 8

    .line 71
    invoke-virtual {p0}, Lcom/tikilive/ui/video/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/tikilive/ui/video/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x82

    const/16 v4, 0x42

    const/16 v5, 0x21

    const/16 v6, 0x11

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    return v7

    :cond_2
    neg-int p1, v0

    return p1

    :cond_3
    return v2

    :cond_4
    if-nez v1, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    goto :goto_0

    :cond_5
    return v7

    :cond_6
    return v0

    :cond_7
    return v2

    :cond_8
    neg-int p1, v0

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getNextViewPos(II)I
    .locals 1

    .line 55
    invoke-virtual {p0, p2}, Lcom/tikilive/ui/video/GridLayoutManager;->calcOffsetToNextView(I)I

    move-result p2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/video/GridLayoutManager;->hitBorder(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/2addr p1, p2

    return p1
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/video/GridLayoutManager;->getNextViewPos(II)I

    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
