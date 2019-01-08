.class Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;
.source "DvrPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->onDvrItemAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    .locals 2

    .line 651
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApplicationConnected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 653
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    iget-object p3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p3}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1600(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p3

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V

    return-void
.end method

.method public onCastAvailabilityChanged(Z)V
    .locals 3

    .line 645
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCastAvailabilityChanged => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1500(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 658
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    const v1, 0x7f1200c5

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConnectivityRecovered()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    const v2, 0x7f1200c4

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onMediaLoadResult(I)V
    .locals 3

    .line 668
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;->onMediaLoadResult(I)V

    if-eqz p1, :cond_0

    .line 671
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaLoadResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->disconnect()V

    :cond_0
    return-void
.end method
