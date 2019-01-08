.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;
.super Ljava/util/TimerTask;
.source "ChannelFullscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->doShowChannelInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18$1;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
