.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
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

    .line 490
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 493
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
