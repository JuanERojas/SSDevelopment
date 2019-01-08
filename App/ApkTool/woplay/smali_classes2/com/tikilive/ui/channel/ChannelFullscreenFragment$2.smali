.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;
.source "ChannelFullscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 181
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApplicationConnected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    return-void
.end method

.method public onCastAvailabilityChanged(Z)V
    .locals 3

    .line 184
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCastAvailabilityChanged: castPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$300(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$200(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    const v1, 0x7f1200c5

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConnectivityRecovered()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    const v2, 0x7f1200c4

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onMediaLoadResult(I)V
    .locals 3

    .line 207
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;->onMediaLoadResult(I)V

    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaLoadResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->disconnect()V

    :cond_0
    return-void
.end method
