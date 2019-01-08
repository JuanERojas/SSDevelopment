.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->playRadioStream(Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->playLiveStream(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
