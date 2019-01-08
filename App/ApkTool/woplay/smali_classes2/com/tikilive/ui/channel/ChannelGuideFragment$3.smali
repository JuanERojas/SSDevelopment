.class Lcom/tikilive/ui/channel/ChannelGuideFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "channel_id"

    const/4 v0, -0x1

    .line 154
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 155
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received Push Notification broadcast for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    .line 157
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "==> invalid channel ID"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$600(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tikilive/ui/model/ChannelProvider;->getById(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {p2, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->getPositionForChannel(Lcom/tikilive/ui/model/Channel;)I

    move-result p1

    .line 170
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 171
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-gt p2, p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 174
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, " ==> refreshing channel guide "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->reload()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, " ==> no need to refresh, the radio channel is not visible"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$800(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    return-void

    .line 165
    :catch_0
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "==> no such channel ID could be found in channel provider"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
