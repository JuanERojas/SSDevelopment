.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->changeChannel()V
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

    .line 453
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo(Z)V

    .line 459
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getSize()I

    move-result v0

    if-lez v0, :cond_6

    .line 460
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$300(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isAnyRouteAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$200(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Channel;->isRequiredMembership()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v2

    invoke-static {v2}, Lcom/tikilive/ui/helper/Utils;->getChannelMediaInfo(Lcom/tikilive/ui/model/Channel;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1502(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaInfo;

    .line 465
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 467
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 469
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starting cast - connected, but getRemoteMediaInformation() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    .line 476
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getCustomData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "channel_id"

    .line 478
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 480
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v3}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getCustomData()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "channel_id"

    .line 482
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v3

    goto :goto_2

    :catch_0
    const/4 v2, 0x0

    .line 487
    :catch_1
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v3

    iget-object v4, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v4}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 488
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaMetadata;->getMediaType()I

    move-result v0

    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v3}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaMetadata;->getMediaType()I

    move-result v3

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_4

    if-ne v2, v1, :cond_4

    .line 490
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not starting cast - current media is already loaded on the remote player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 492
    :cond_4
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starting cast - connected, but remote media is different than current media"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    goto :goto_3

    .line 498
    :cond_5
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starting cast - connected, but no remote media is loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    :try_end_3
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 504
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoConnectionException thrown when trying to get remote media information"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    .line 502
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransientNetworkDisconnectionException thrown when trying to get remote media information"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method
