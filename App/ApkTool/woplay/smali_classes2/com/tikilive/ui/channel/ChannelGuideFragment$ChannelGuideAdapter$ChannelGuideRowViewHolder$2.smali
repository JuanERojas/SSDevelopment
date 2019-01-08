.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$end:I

.field final synthetic val$event:Lcom/tikilive/ui/model/Event;

.field final synthetic val$eventContainer:Landroid/widget/RelativeLayout;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IILandroid/widget/RelativeLayout;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$event:Lcom/tikilive/ui/model/Event;

    iput p4, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$start:I

    iput p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$end:I

    iput-object p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$eventContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 1301
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    if-eqz p2, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->markChannelSelected(ZZ)V

    :cond_2
    return-void

    .line 1308
    :cond_3
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    if-eqz p2, :cond_6

    .line 1310
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    invoke-virtual {p2, p1, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->markChannelSelected(ZZ)V

    .line 1313
    :cond_6
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1700(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->getOnChannelGuideSelectedEventListener()Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;

    move-result-object v0

    .line 1314
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$event:Lcom/tikilive/ui/model/Event;

    iget v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$start:I

    iget v4, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$end:I

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v5

    iget-object v6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;->val$eventContainer:Landroid/widget/RelativeLayout;

    invoke-interface/range {v0 .. v6}, Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;->channelGuideSelected(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V

    return-void
.end method
