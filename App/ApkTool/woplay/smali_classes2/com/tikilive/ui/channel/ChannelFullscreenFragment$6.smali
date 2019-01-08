.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$6;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 392
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 396
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Event;->getPurchaseUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 401
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
