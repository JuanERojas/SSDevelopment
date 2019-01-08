.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;
.super Ljava/lang/Object;
.source "VideoCastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 2980
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2984
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 2985
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2989
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaDuration()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 2991
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCurrentMediaPosition()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2992
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v2, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1600(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;II)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2995
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to update the progress tracker due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
