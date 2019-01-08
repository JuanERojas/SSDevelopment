.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19$1;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1100(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo()V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    :goto_0
    return-void
.end method
