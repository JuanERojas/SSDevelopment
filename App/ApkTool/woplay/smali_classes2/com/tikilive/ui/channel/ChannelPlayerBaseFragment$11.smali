.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->playPreviewStream(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$expiredPreviewChannels:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Ljava/util/ArrayList;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->val$expiredPreviewChannels:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 913
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview stream after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Channel;->getFreePreviewTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds and mark channel preview as expired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->stopPlayback()V

    .line 915
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->val$expiredPreviewChannels:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
