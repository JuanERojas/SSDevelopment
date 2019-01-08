.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;
.super Ljava/lang/Object;
.source "VideoCastControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 312
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaDuration()J

    move-result-wide v0
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    long-to-int v0, v0

    if-lez v0, :cond_2

    .line 315
    :try_start_1
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    iget-object v1, v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCurrentMediaPosition()J

    move-result-wide v1

    long-to-int v1, v1

    .line 316
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    iget-object v2, v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->updateSeekbar(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 318
    :try_start_2
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get current media position"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 322
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to update the progress bar due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
