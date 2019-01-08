.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChannelFullscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;
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

    .line 111
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "channel_id"

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 118
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 122
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 123
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "restarting loader due to Push Notification broadcast"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v0, p2, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignoring Push Notification broadcast because it\'s for a different channel"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
