.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;
.source "VideoCastControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCastConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->updateControllersStatus(Z)V

    return-void
.end method

.method public onConnectivityRecovered()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->updateControllersStatus(Z)V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    return-void
.end method

.method public onFailed(II)V
    .locals 3

    .line 258
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x834

    if-eq p2, v0, :cond_0

    const/16 v0, 0x836

    if-ne p2, v0, :cond_1

    .line 261
    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 262
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    :cond_1
    return-void
.end method

.method public onMediaLoadResult(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 249
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaLoadResult(): Failed to load media with status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_to_load_media:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 252
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    :cond_0
    return-void
.end method

.method public onMediaQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "IZ)V"
        }
    .end annotation

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 278
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 279
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 281
    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->onQueueItemsUpdated(II)V

    return-void
.end method

.method public onRemoteMediaPlayerMetadataUpdated()V
    .locals 3

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$602(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaInfo;

    .line 239
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$800(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$900(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to update the metadata due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onRemoteMediaPlayerStatusUpdated()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1000(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    return-void
.end method
