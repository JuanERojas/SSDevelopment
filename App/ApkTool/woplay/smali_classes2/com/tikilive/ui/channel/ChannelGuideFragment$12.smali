.class Lcom/tikilive/ui/channel/ChannelGuideFragment$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

.field final synthetic val$focusFirst:Z

.field final synthetic val$focusPosition:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;IZ)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iput p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->val$focusPosition:I

    iput-boolean p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->val$focusFirst:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->val$focusPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    if-eqz v0, :cond_1

    .line 541
    iget-boolean v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->val$focusFirst:Z

    if-eqz v1, :cond_0

    .line 542
    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 545
    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 549
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
