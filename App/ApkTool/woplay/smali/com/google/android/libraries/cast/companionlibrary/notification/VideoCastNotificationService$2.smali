.class Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;
.super Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
.source "VideoCastNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

.field final synthetic val$info:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->val$info:Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$600(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    .line 241
    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$600(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)I

    move-result v2

    .line 240
    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->scaleAndCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$502(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 242
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->val$info:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$500(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$700(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->build(Lcom/google/android/gms/cast/MediaInfo;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set notification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->val$info:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$100(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object p1, p1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iget-object v1, v1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$800(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    move-result-object p1

    if-ne p0, p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->access$802(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
