.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doOnCurrentEvent(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$expiredRequiredMembershipTimeouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Ljava/util/ArrayList;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->val$expiredRequiredMembershipTimeouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 597
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing required membership screen, as the timeout expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->getRequiredMembershipTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Channel;->getRequiredMembershipInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showRequiredMembershipScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->val$expiredRequiredMembershipTimeouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
