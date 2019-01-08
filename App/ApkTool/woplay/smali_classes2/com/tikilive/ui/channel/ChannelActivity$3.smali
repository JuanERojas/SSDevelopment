.class Lcom/tikilive/ui/channel/ChannelActivity$3;
.super Ljava/util/TimerTask;
.source "ChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity;->onChannelNumberRequested(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelActivity;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/model/Channel;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$3;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelActivity$3;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$3;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelActivity$3$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelActivity$3$1;-><init>(Lcom/tikilive/ui/channel/ChannelActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
