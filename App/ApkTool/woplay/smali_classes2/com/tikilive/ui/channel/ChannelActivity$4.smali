.class Lcom/tikilive/ui/channel/ChannelActivity$4;
.super Ljava/util/TimerTask;
.source "ChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity;->changeChannel(Lcom/tikilive/ui/model/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$4;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$4;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$602(Lcom/tikilive/ui/channel/ChannelActivity;Z)Z

    return-void
.end method
