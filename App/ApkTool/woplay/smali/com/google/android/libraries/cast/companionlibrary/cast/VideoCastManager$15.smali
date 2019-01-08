.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;
.super Ljava/lang/Object;
.source "VideoCastManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->queueInsertBeforeCurrentAndPlay(Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field final synthetic val$customData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 1496
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;->val$customData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 4

    .line 1500
    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;->val$customData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->queuePrev(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1506
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "queuePrev() Failed to skip to previous"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1509
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    const/4 v2, 0x2

    .line 1511
    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    .line 1510
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onMediaQueueOperationResult(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 1496
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method
