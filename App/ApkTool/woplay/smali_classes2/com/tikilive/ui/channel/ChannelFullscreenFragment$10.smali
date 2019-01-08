.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showSubscriptionErrorScreen(Ljava/lang/String;ILjava/lang/String;)V
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

    .line 582
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 585
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const-class v1, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    const-string v1, "selected_channel_id"

    .line 587
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "selected_channel_name"

    .line 588
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
