.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;
.super Lcom/tikilive/ui/listener/OnSwipeTouchListener;
.source "ChannelFullscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Landroid/content/Context;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo()V

    return-void
.end method

.method public onSwipeLeft()Z
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->previous()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1, v0}, Lcom/tikilive/ui/helper/Utils;->launchTvEverywhereChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1, v0}, Lcom/tikilive/ui/helper/Utils;->launchSlingChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryChannelId(I)V

    .line 371
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;

    .line 372
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->changeChannel()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->next()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1, v0}, Lcom/tikilive/ui/helper/Utils;->launchTvEverywhereChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1, v0}, Lcom/tikilive/ui/helper/Utils;->launchSlingChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryChannelId(I)V

    .line 356
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;

    .line 357
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->changeChannel()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeTop()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;->onChannelGuideRequested()V

    const/4 v0, 0x1

    return v0
.end method
