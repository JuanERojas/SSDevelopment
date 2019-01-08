.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;
.super Ljava/lang/Object;
.source "VideoCastManager.java"

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->attachMediaChannel()V
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

    .line 1839
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueStatusUpdated()V
    .locals 5

    .line 1843
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteMediaPlayer::onQueueStatusUpdated() is reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/RemoteMediaPlayer;

    move-result-object v1

    .line 1845
    invoke-virtual {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1844
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$402(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Lcom/google/android/gms/cast/MediaStatus;)Lcom/google/android/gms/cast/MediaStatus;

    .line 1846
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1847
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItems()Ljava/util/List;

    move-result-object v0

    .line 1849
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    .line 1850
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v3

    .line 1851
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v2

    .line 1852
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v3

    .line 1853
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v4, v0, v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$600(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V

    goto :goto_1

    .line 1855
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0, v2, v2, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$600(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V

    :goto_1
    return-void
.end method
