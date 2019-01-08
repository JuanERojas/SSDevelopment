.class Lcom/tikilive/ui/channel/ChannelActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelActivity$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity$2;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$2$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$2$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$2;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelActivity$2;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->access$500(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->hideChannelChanger()V

    .line 364
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$2$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$2;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelActivity$2;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity$2$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$2;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelActivity$2;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-static {v0, v1}, Lcom/tikilive/ui/helper/Utils;->launchTvEverywhereChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    return-void
.end method
