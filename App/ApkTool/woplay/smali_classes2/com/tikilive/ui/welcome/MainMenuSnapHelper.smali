.class public Lcom/tikilive/ui/welcome/MainMenuSnapHelper;
.super Landroid/support/v7/widget/LinearSnapHelper;
.source "MainMenuSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;
    }
.end annotation


# instance fields
.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mSnapLastItemEnabled:Z

.field mSnapListener:Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;

.field mSnapping:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;-><init>(ZLcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;-><init>(ZLcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;)V

    return-void
.end method

.method public constructor <init>(ZLcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    .line 17
    new-instance v0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;-><init>(Lcom/tikilive/ui/welcome/MainMenuSnapHelper;)V

    iput-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 43
    iput-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapListener:Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;

    .line 44
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapLastItemEnabled:Z

    return-void
.end method

.method private distanceToEnd(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .locals 0

    .line 100
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private distanceToStart(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .locals 0

    .line 96
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private findStartView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 8

    .line 113
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 115
    new-array v2, v0, [I

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 116
    move-object v5, p1

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v2

    .line 117
    aget v2, v2, v4

    if-ne v2, v3, :cond_0

    return-object v1

    .line 123
    :cond_0
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 130
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    .line 131
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v7, p2

    .line 135
    new-array p2, v0, [I

    aput v3, p2, v4

    .line 136
    invoke-virtual {v5, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object p2

    .line 137
    aget p2, p2, v4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p2, v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, v7, p2

    if-lez p2, :cond_2

    if-nez v4, :cond_2

    return-object v6

    .line 141
    :cond_2
    iget-boolean p2, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapLastItemEnabled:Z

    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    return-object v6

    :cond_3
    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    add-int/2addr v2, v0

    .line 148
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 170
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object p1
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapListener:Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [I

    .line 63
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->distanceToStart(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result p1

    aput p1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    return-object v0
.end method

.method public enableLastItemSnap(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapLastItemEnabled:Z

    return-void
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .line 75
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->findStartView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_1
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapping:Z

    return-object p1
.end method

.method getSnappedPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    .line 156
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 158
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 159
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 160
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object p1

    .line 161
    aget p1, p1, v2

    return p1

    :cond_0
    return v1
.end method
