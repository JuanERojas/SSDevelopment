.class Lcom/tikilive/ui/channel/ChannelGuideFragment$1;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 106
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    .line 111
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$200(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$100(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
