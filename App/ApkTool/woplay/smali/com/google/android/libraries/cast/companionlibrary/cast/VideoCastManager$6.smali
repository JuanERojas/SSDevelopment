.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$6;
.super Ljava/lang/Object;
.source "VideoCastManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->queueUpdateItems([Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)V
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


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 4

    .line 1161
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueUpdateItems() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 1162
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    const/4 v2, 0x3

    .line 1165
    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    .line 1164
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onMediaQueueOperationResult(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 1157
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$6;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method