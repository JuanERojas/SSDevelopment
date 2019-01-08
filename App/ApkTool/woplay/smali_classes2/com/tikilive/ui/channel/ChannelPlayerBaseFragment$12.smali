.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;
.super Ljava/util/TimerTask;
.source "ChannelPlayerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setChannelChangerTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12$1;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
