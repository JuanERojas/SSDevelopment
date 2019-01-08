.class Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;
.super Ljava/util/TimerTask;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$4;->onChannelNumberRequested(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$4;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$4;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$4;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1$1;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
