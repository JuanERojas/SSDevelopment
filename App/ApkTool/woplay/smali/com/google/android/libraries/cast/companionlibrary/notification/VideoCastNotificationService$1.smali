.class Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;
.source "VideoCastNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onApplicationDisconnected() was reached, stopping the notification service"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopSelf()V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopSelf()V

    return-void
.end method

.method public onMediaQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V
    .locals 1
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

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    .line 164
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p4, 0x0

    .line 166
    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    if-ge p1, p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-static {p2, p4}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$302(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z

    .line 167
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    if-lez p1, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-static {p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$402(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z

    return-void
.end method

.method public onRemoteMediaPlayerStatusUpdated()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->onRemoteMediaPlayerStatusUpdated(I)V

    return-void
.end method

.method public onUiVisibilityChanged(Z)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$102(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z

    .line 143
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object p1, p1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    if-nez p1, :cond_0

    .line 145
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$200(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Lcom/google/android/gms/cast/MediaInfo;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onStartCommand() failed to get media"

    invoke-static {v0, v2, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$100(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object p1, p1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopForeground(Z)V

    :goto_1
    return-void
.end method
