.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field final synthetic this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1477
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$2300(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->count:I

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1482
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/high16 v0, 0x42a00000    # 80.0f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x14

    if-ne p2, p1, :cond_0

    .line 1483
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 1484
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1485
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/helper/Utils;->getLogicalDensity(Landroid/app/Activity;)F

    move-result p1

    mul-float p1, p1, v0

    float-to-double p1, p1

    .line 1486
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 1487
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    return v1

    .line 1492
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x13

    if-ne p2, p1, :cond_1

    .line 1493
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 1494
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1495
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/helper/Utils;->getLogicalDensity(Landroid/app/Activity;)F

    move-result p1

    mul-float p1, p1, v0

    float-to-double p1, p1

    .line 1496
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 1497
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    rsub-int/lit8 p1, p1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    return v1

    .line 1502
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x16

    if-ne p2, p1, :cond_2

    .line 1503
    iget p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->count:I

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$2300(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_2

    .line 1504
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->loadNextInterval()V

    return v2

    .line 1509
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x15

    if-ne p2, p1, :cond_3

    .line 1510
    iget p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->count:I

    if-nez p1, :cond_3

    .line 1511
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->loadPreviousInterval()Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
