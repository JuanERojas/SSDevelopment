.class Lcom/tikilive/ui/channel/ChannelGuideFragment$4;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->onAttach(Landroid/app/Activity;)V
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

    .line 207
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelNumberRequested(I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$900(Lcom/tikilive/ui/channel/ChannelGuideFragment;I)V

    .line 211
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$4;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
