.class public Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;
.super Landroid/app/Service;
.source "VideoCastNotificationService.java"


# static fields
.field public static final ACTION_FORWARD:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.forward"

.field public static final ACTION_PLAY_NEXT:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.playnext"

.field public static final ACTION_PLAY_PREV:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.playprev"

.field public static final ACTION_REWIND:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.rewind"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.stop"

.field public static final ACTION_TOGGLE_PLAYBACK:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

.field public static final ACTION_VISIBILITY:Ljava/lang/String; = "com.google.android.libraries.cast.companionlibrary.action.notificationvisibility"

.field public static final EXTRA_FORWARD_STEP_MS:Ljava/lang/String; = "ccl_extra_forward_step_ms"

.field protected static final NOTIFICATION_ID:I = 0x1

.field public static final NOTIFICATION_VISIBILITY:Ljava/lang/String; = "visible"

.field private static final TAG:Ljava/lang/String;

.field private static final TEN_SECONDS_MILLIS:J

.field private static final THIRTY_SECONDS_MILLIS:J


# instance fields
.field private mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field protected mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

.field private mDimensionInPixels:I

.field private mForwardTimeInMillis:J

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mIsPlaying:Z

.field protected mNotification:Landroid/app/Notification;

.field private mNotificationActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCompactActionsArray:[I

.field private mOldStatus:I

.field private mTargetActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mVideoArtBitmap:Landroid/graphics/Bitmap;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TEN_SECONDS_MILLIS:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->THIRTY_SECONDS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mOldStatus:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVisible:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mHasNext:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mHasPrev:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVideoArtBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVideoArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mDimensionInPixels:I

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method private readPersistedData()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getTargetActivity()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mTargetActivity:Ljava/lang/Class;

    .line 520
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mTargetActivity:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 521
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->DEFAULT_TARGET_ACTIVITY:Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mTargetActivity:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method private removeNotification()V
    .locals 2

    const-string v0, "notification"

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    iget-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->build(Lcom/google/android/gms/cast/MediaInfo;Landroid/graphics/Bitmap;Z)V

    return-void

    .line 231
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 234
    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to build notification"

    invoke-static {v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :goto_0
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;Lcom/google/android/gms/cast/MediaInfo;)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 255
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected build(Lcom/google/android/gms/cast/MediaInfo;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 336
    invoke-virtual {v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 335
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_stat_action_notification:I

    .line 340
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    .line 341
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getContentIntent(Lcom/google/android/gms/cast/MediaInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotificationCompactActionsArray:[I

    .line 346
    invoke-virtual {v0, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 347
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaSessionCompatToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    .line 345
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 348
    invoke-virtual {p2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 349
    invoke-virtual {p2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 350
    invoke-virtual {p2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 352
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotificationActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 353
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    iget-wide v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mForwardTimeInMillis:J

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getForwardAction(J)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 370
    :pswitch_1
    iget-wide v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mForwardTimeInMillis:J

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getRewindAction(J)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 355
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getDisconnectAction()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 364
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getSkipPreviousAction()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 361
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getSkipNextAction()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 358
    :pswitch_5
    invoke-virtual {p0, p1, p3}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPlayPauseAction(Lcom/google/android/gms/cast/MediaInfo;Z)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getContentIntent(Lcom/google/android/gms/cast/MediaInfo;)Landroid/app/PendingIntent;
    .locals 4

    .line 503
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->mediaInfoToBundle(Lcom/google/android/gms/cast/MediaInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mTargetActivity:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "media"

    .line 505
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 506
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mTargetActivity:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 508
    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 509
    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->getIntentCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 510
    invoke-virtual {v1, v2}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "media"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x8000000

    .line 512
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected getDisconnectAction()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 4

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.stop"

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 492
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 493
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_disconnect_24dp:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_disconnect:I

    .line 494
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method protected getForwardAction(J)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 5

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.forward"

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ccl_extra_forward_step_ms"

    long-to-int v2, p1

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 389
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 390
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_forward_48dp:I

    .line 391
    sget-wide v2, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TEN_SECONDS_MILLIS:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 392
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_forward10_48dp:I

    goto :goto_0

    .line 393
    :cond_0
    sget-wide v2, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->THIRTY_SECONDS_MILLIS:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 394
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_forward30_48dp:I

    .line 397
    :cond_1
    :goto_0
    new-instance p1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_forward:I

    .line 398
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p1

    return-object p1
.end method

.method protected getPlayPauseAction(Lcom/google/android/gms/cast/MediaInfo;Z)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 2

    .line 468
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 469
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_stop_48dp:I

    goto :goto_0

    .line 471
    :cond_0
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_pause_48dp:I

    :goto_0
    if-eqz p2, :cond_1

    .line 473
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_pause:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_play:I

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    .line 474
    :cond_2
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_play_48dp:I

    .line 476
    :goto_2
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

    .line 477
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 479
    invoke-static {p0, v1, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 480
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 481
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p1

    return-object p1
.end method

.method protected getRewindAction(J)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 5

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.rewind"

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ccl_extra_forward_step_ms"

    neg-long v2, p1

    long-to-int v2, v2

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 411
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 412
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_rewind_48dp:I

    .line 413
    sget-wide v2, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TEN_SECONDS_MILLIS:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 414
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_rewind10_48dp:I

    goto :goto_0

    .line 415
    :cond_0
    sget-wide v2, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->THIRTY_SECONDS_MILLIS:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 416
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_rewind30_48dp:I

    .line 418
    :cond_1
    :goto_0
    new-instance p1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_rewind:I

    .line 419
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p1

    return-object p1
.end method

.method protected getSkipNextAction()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 5

    .line 429
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_skip_next_semi_48dp:I

    .line 430
    iget-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mHasNext:Z

    if-eqz v1, :cond_0

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.playnext"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 434
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 435
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_skip_next_48dp:I

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 438
    :goto_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_skip_next:I

    .line 439
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method protected getSkipPreviousAction()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 5

    .line 449
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_skip_prev_semi_48dp:I

    .line 450
    iget-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mHasPrev:Z

    if-eqz v1, :cond_0

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.playprev"

    .line 452
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 454
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 455
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_notification_skip_prev_48dp:I

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 458
    :goto_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_skip_previous:I

    .line 459
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$dimen;->ccl_notification_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 106
    invoke-static {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->convertDpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mDimensionInPixels:I

    .line 108
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 109
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->readPersistedData()V

    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->reconnectSessionIfPossible()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaQueue()Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->getCurrentItemPosition()I

    move-result v2

    .line 116
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->getCount()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mHasNext:Z

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 118
    :goto_1
    iput-boolean v3, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mHasPrev:Z

    .line 120
    :cond_3
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getNotificationActions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotificationActions:Ljava/util/List;

    .line 172
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getNotificationCompactActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotificationCompactActionsArray:[I

    .line 176
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotificationCompactActionsArray:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 181
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getForwardStep()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mForwardTimeInMillis:J

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mBitmapDecoderTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->removeNotification()V

    .line 318
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    :cond_1
    return-void
.end method

.method protected onRemoteMediaPlayerStatusUpdated(I)V
    .locals 3

    .line 267
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mOldStatus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 271
    :cond_0
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mOldStatus:I

    .line 272
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteMediaPlayerStatusUpdated() reached with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    .line 277
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V

    goto :goto_0

    .line 284
    :pswitch_1
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    .line 285
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V

    goto :goto_0

    .line 280
    :pswitch_2
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    .line 281
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V

    goto :goto_0

    .line 288
    :pswitch_3
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    .line 289
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 290
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result v2

    .line 289
    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->shouldRemoteUiBeVisible(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopForeground(Z)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V

    goto :goto_0

    .line 297
    :pswitch_4
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mIsPlaying:Z

    .line 298
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopForeground(Z)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 304
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to update the playback status due to network issues"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 191
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.google.android.libraries.cast.companionlibrary.action.notificationvisibility"

    .line 195
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "visible"

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVisible:Z

    .line 197
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand(): Action: ACTION_VISIBILITY "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->onRemoteMediaPlayerStatusUpdated(I)V

    .line 199
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    if-nez p1, :cond_0

    .line 201
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->setUpNotification(Lcom/google/android/gms/cast/MediaInfo;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    sget-object p3, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->TAG:Ljava/lang/String;

    const-string v0, "onStartCommand() failed to get media"

    invoke-static {p3, v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mVisible:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;->stopForeground(Z)V

    :cond_2
    :goto_1
    return p2
.end method
