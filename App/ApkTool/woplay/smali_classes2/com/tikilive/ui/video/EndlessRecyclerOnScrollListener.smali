.class public abstract Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "EndlessRecyclerOnScrollListener.java"


# static fields
.field private static final VISIBLE_THRESHOLD:I = 0x8


# instance fields
.field firstVisibleItem:I

.field private loading:Z

.field private mGridLayoutManager:Lcom/tikilive/ui/video/GridLayoutManager;

.field private previousTotal:I

.field totalItemCount:I

.field visibleItemCount:I


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/video/GridLayoutManager;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->previousTotal:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->loading:Z

    .line 18
    iput-object p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->mGridLayoutManager:Lcom/tikilive/ui/video/GridLayoutManager;

    return-void
.end method


# virtual methods
.method public abstract onLoadMore()V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->visibleItemCount:I

    .line 26
    iget-object p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->mGridLayoutManager:Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/GridLayoutManager;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->totalItemCount:I

    .line 27
    iget-object p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->mGridLayoutManager:Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->firstVisibleItem:I

    .line 30
    iget-boolean p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->loading:Z

    if-eqz p1, :cond_0

    .line 31
    iget p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iget p2, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->previousTotal:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->loading:Z

    .line 33
    iget p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iput p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->previousTotal:I

    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->loading:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iget p2, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->visibleItemCount:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->firstVisibleItem:I

    add-int/lit8 p2, p2, 0x8

    if-gt p1, p2, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->onLoadMore()V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;->loading:Z

    :cond_1
    return-void
.end method
