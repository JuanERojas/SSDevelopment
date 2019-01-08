.class public Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;
.source "VideoCastManager.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/OnFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_STREAM_DURATION_MS:J

.field public static final DEFAULT_TARGET_ACTIVITY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_VOLUME_STEP:D = 0.05

.field public static final EXTRA_CUSTOM_DATA:Ljava/lang/String; = "customData"

.field public static final EXTRA_HAS_AUTH:Ljava/lang/String; = "hasAuth"

.field public static final EXTRA_MEDIA:Ljava/lang/String; = "media"

.field public static final EXTRA_SHOULD_START:Ljava/lang/String; = "shouldStart"

.field public static final EXTRA_START_POINT:Ljava/lang/String; = "startPoint"

.field public static final PREFS_KEY_START_ACTIVITY:Ljava/lang/String; = "ccl-start-cast-activity"

.field private static final PROGRESS_UPDATE_INTERVAL_MS:J

.field public static final QUEUE_OPERATION_APPEND:I = 0x9

.field public static final QUEUE_OPERATION_INSERT_ITEMS:I = 0x2

.field public static final QUEUE_OPERATION_JUMP:I = 0x4

.field public static final QUEUE_OPERATION_LOAD:I = 0x1

.field public static final QUEUE_OPERATION_MOVE:I = 0x8

.field public static final QUEUE_OPERATION_NEXT:I = 0xa

.field public static final QUEUE_OPERATION_PREV:I = 0xb

.field public static final QUEUE_OPERATION_REMOVE_ITEM:I = 0x5

.field public static final QUEUE_OPERATION_REMOVE_ITEMS:I = 0x6

.field public static final QUEUE_OPERATION_REORDER:I = 0x7

.field public static final QUEUE_OPERATION_SET_REPEAT:I = 0xc

.field public static final QUEUE_OPERATION_UPDATE_ITEMS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

.field private mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

.field private mDataNamespace:Ljava/lang/String;

.field private mIdleReason:I

.field private mLiveStreamDuration:J

.field private mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field private mMediaQueue:Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

.field private mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field private mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

.field private final mMiniControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mPreLoadingItem:Lcom/google/android/gms/cast/MediaQueueItem;

.field private mProgressHandler:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mProgressRunnable:Ljava/lang/Runnable;

.field private final mProgressWatchers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/cast/companionlibrary/widgets/ProgressWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private mState:I

.field private mTargetActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mTrackManager:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

.field private final mTracksSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoConsumers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeStep:D

.field private mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    .line 141
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->DEFAULT_TARGET_ACTIVITY:Ljava/lang/Class;

    .line 143
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->PROGRESS_UPDATE_INTERVAL_MS:J

    .line 144
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->DEFAULT_LIVE_STREAM_DURATION_MS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 200
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;-><init>()V

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 147
    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeStep:D

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    .line 172
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;->DEVICE:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    .line 177
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    .line 178
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTracksSelectedListeners:Ljava/util/Set;

    .line 180
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressWatchers:Ljava/util/Set;

    .line 182
    sget-wide v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->DEFAULT_LIVE_STREAM_DURATION_MS:J

    iput-wide v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLiveStreamDuration:J

    .line 184
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2980
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V
    .locals 2

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;-><init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 147
    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeStep:D

    .line 167
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 168
    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    .line 172
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;->DEVICE:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    const/4 p1, 0x1

    .line 173
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    .line 177
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTracksSelectedListeners:Ljava/util/Set;

    .line 180
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressWatchers:Ljava/util/Set;

    .line 182
    sget-wide v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->DEFAULT_LIVE_STREAM_DURATION_MS:J

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLiveStreamDuration:J

    .line 184
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2980
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$35;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressRunnable:Ljava/lang/Runnable;

    .line 205
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "VideoCastManager is instantiated"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getNamespaces()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getNamespaces()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    .line 208
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getTargetActivity()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1

    .line 210
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->DEFAULT_TARGET_ACTIVITY:Ljava/lang/Class;

    .line 212
    :cond_1
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTargetActivity:Ljava/lang/Class;

    .line 213
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v0, "cast-activity-name"

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTargetActivity:Ljava/lang/Class;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 216
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v0, "cast-custom-data-namespace"

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAudioManager:Landroid/media/AudioManager;

    .line 220
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getCustomNotificationService()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mNotificationServiceClass:Ljava/lang/Class;

    .line 221
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mNotificationServiceClass:Ljava/lang/Class;

    if-nez p1, :cond_3

    .line 222
    const-class p1, Lcom/google/android/libraries/cast/companionlibrary/notification/VideoCastNotificationService;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mNotificationServiceClass:Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Ljava/util/Set;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onApplicationDisconnected(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onApplicationStatusChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onVolumeChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTrackManager:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;II)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateProgress(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onRemoteMediaPlayerStatusUpdated()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onRemoteMediaPreloadStatusUpdated()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/MediaStatus;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Lcom/google/android/gms/cast/MediaStatus;)Lcom/google/android/gms/cast/MediaStatus;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/gms/cast/RemoteMediaPlayer;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onMessageSendFailed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method private attachDataChannel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    if-eqz v0, :cond_1

    return-void

    .line 1954
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1955
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$26;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$26;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 1965
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1967
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "attachDataChannel()"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private attachMediaChannel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1799
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "attachMediaChannel()"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1801
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1802
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 1804
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$22;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$22;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setOnStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;)V

    .line 1815
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$23;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$23;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setOnPreloadStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnPreloadStatusUpdatedListener;)V

    .line 1828
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$24;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$24;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setOnMetadataUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;)V

    .line 1838
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$25;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setOnQueueStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnQueueStatusUpdatedListener;)V

    .line 1863
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Registering MediaChannel namespace"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1867
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "attachMediaChannel()"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 1869
    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setUpMediaSession(Lcom/google/android/gms/cast/MediaInfo;)V

    return-void
.end method

.method private changeVolume(DZ)Z
    .locals 2

    .line 2705
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2706
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2707
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 2713
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->adjustVolume(D)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2716
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p3, "Failed to change volume"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkRemoteMediaPlayerAvailable()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private detachMediaChannel()V
    .locals 3

    .line 1885
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "trying to detach media channel"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_0

    .line 1888
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 1889
    invoke-virtual {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 1888
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1891
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "detachMediaChannel()"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 1893
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    :cond_0
    return-void
.end method

.method private getCastControllerPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 2275
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->mediaInfoToBundle(Lcom/google/android/gms/cast/MediaInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 2276
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTargetActivity:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "media"

    .line 2277
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2278
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 2279
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2281
    :catch_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "getCastControllerPendingIntent(): Failed to get the remote media information"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 2

    .line 256
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-nez v0, :cond_0

    const-string v0, "No VideoCastManager instance was found, did you forget to initialize it?"

    .line 258
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 3

    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    monitor-enter v0

    .line 236
    :try_start_0
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-nez v1, :cond_1

    .line 237
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "New instance of VideoCastManager is created"

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Couldn\'t find the appropriate version of Google Play Services"

    .line 241
    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;-><init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V

    sput-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 245
    :cond_1
    sget-object p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setupTrackManager()V

    .line 246
    sget-object p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 235
    monitor-exit v0

    throw p0
.end method

.method private onApplicationDisconnected(I)V
    .locals 4

    .line 815
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationDisconnected() reached with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApplicationErrorCode:I

    const/4 v0, 0x0

    .line 817
    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSession(Z)V

    .line 818
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1, v2}, Landroid/support/v7/media/MediaRouter;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 822
    invoke-interface {v3, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onApplicationDisconnected(I)V

    goto :goto_0

    .line 824
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz p1, :cond_3

    .line 825
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplicationDisconnected(): Cached RouteInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRouteInfo()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplicationDisconnected(): Selected RouteInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 827
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-static {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRouteInfo()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRouteInfo()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 829
    :cond_2
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onApplicationDisconnected(): Setting route to default"

    invoke-static {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 833
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 834
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniControllersVisibility(Z)V

    .line 835
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopNotificationService()V

    return-void
.end method

.method private onApplicationStatusChanged()V
    .locals 4

    .line 839
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    .line 844
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplicationStatusChanged() reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 846
    invoke-interface {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onApplicationStatusChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 849
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "onApplicationStatusChanged()"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private onMessageSendFailed(I)V
    .locals 2

    .line 1982
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 1983
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onDataMessageSendFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V
    .locals 6
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

    .line 2157
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onQueueUpdated() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Queue Items size: %d, Item: %s, Repeat Mode: %d, Shuffle: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 2159
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2158
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2161
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, p2, p4, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;-><init>(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;ZI)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaQueue:Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    goto :goto_1

    .line 2164
    :cond_1
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;-><init>(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;ZI)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaQueue:Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    .line 2167
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2168
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onMediaQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private onRemoteMediaPlayerStatusUpdated()V
    .locals 8

    .line 2044
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onRemoteMediaPlayerStatusUpdated() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 2046
    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    .line 2051
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2053
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    .line 2054
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v2

    .line 2055
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v3

    .line 2056
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2058
    invoke-direct {p0, v0, v0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V

    .line 2060
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    .line 2061
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    .line 2064
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getVolume()D

    move-result-wide v2

    .line 2065
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isMute()Z

    move-result v0

    .line 2067
    iget v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 2068
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v5, "onRemoteMediaPlayerStatusUpdated(): Player status = playing"

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    invoke-direct {p0, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSession(Z)V

    .line 2070
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaTimeRemaining()J

    move-result-wide v4

    .line 2071
    invoke-virtual {p0, v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startReconnectionService(J)V

    .line 2072
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startNotificationService()Z

    goto/16 :goto_2

    .line 2073
    :cond_2
    iget v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 2074
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v5, "onRemoteMediaPlayerStatusUpdated(): Player status = paused"

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSession(Z)V

    .line 2076
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startNotificationService()Z

    goto/16 :goto_2

    .line 2077
    :cond_3
    iget v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    if-ne v4, v6, :cond_4

    .line 2078
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRemoteMediaPlayerStatusUpdated(): Player status = IDLE with reason: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSession(Z)V

    .line 2081
    iget v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    packed-switch v4, :pswitch_data_0

    .line 2108
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 2091
    :pswitch_0
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v5, "onRemoteMediaPlayerStatusUpdated(): IDLE reason = ERROR"

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->clearMediaSession()V

    .line 2094
    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_receiver_player_error:I

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onFailed(II)V

    goto :goto_3

    .line 2101
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v4

    if-nez v4, :cond_5

    .line 2103
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->clearMediaSession()V

    goto :goto_3

    .line 2097
    :pswitch_2
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v5, "onRemoteMediaPlayerStatusUpdated(): IDLE reason = CANCELLED"

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result v4

    xor-int/2addr v4, v6

    goto :goto_4

    .line 2083
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v4

    if-nez v4, :cond_5

    .line 2085
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->clearMediaSession()V

    goto :goto_3

    .line 2108
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRemoteMediaPlayerStatusUpdated(): Unexpected Idle Reason "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2111
    :cond_4
    iget v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 2112
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v5, "onRemoteMediaPlayerStatusUpdated(): Player status = buffering"

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const/4 v4, 0x0

    goto :goto_4

    .line 2114
    :cond_6
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v5, "onRemoteMediaPlayerStatusUpdated(): Player status = unknown"

    invoke-static {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_7

    .line 2118
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopReconnectionService()V

    .line 2119
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopNotificationService()V

    :cond_7
    if-nez v4, :cond_8

    const/4 v1, 0x1

    .line 2121
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniControllersVisibility(Z)V

    .line 2122
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniControllers()V

    .line 2123
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2124
    invoke-interface {v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onRemoteMediaPlayerStatusUpdated()V

    .line 2125
    invoke-interface {v4, v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onVolumeChanged(DZ)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 2128
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get volume state due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void

    .line 2047
    :cond_a
    :goto_6
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "mApiClient or mRemoteMediaPlayer is null, so will not proceed"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onRemoteMediaPreloadStatusUpdated()V
    .locals 4

    .line 2135
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 2136
    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    .line 2137
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v1

    .line 2140
    :cond_1
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreLoadingItem:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 2141
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniControllersVisibilityForUpcoming(Lcom/google/android/gms/cast/MediaQueueItem;)V

    .line 2142
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteMediaPreloadStatusUpdated() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2144
    invoke-interface {v2, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onRemoteMediaPreloadStatusUpdated(Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private onVolumeChanged()V
    .locals 5

    .line 854
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onVolumeChanged() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getVolume()D

    move-result-wide v0

    .line 858
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isMute()Z

    move-result v2

    .line 859
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 860
    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onVolumeChanged(DZ)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 863
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get volume"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private reattachDataChannel()V
    .locals 4

    .line 1972
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    if-eqz v0, :cond_0

    .line 1974
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1976
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "reattachDataChannel()"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private reattachMediaChannel()V
    .locals 4

    .line 1873
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 1875
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Registering MediaChannel namespace"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 1877
    invoke-virtual {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 1876
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1879
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "reattachMediaChannel()"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private registerCaptionListener(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2870
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->IS_KITKAT_OR_ABOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "captioning"

    .line 2872
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 2873
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_0
    return-void
.end method

.method private restartProgressTimer()V
    .locals 7

    .line 3001
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopProgressTimer()V

    .line 3002
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressRunnable:Ljava/lang/Runnable;

    sget-wide v4, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->PROGRESS_UPDATE_INTERVAL_MS:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    .line 3003
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressHandler:Ljava/util/concurrent/ScheduledFuture;

    .line 3005
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Restarted Progress Timer"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBitmapForLockScreen(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 6

    if-eqz p1, :cond_9

    .line 2303
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2308
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object p1

    .line 2309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_4

    .line 2310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 2311
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 2312
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2313
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 2314
    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 2316
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder_large:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v2

    goto :goto_1

    .line 2319
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2320
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 2323
    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    :goto_1
    if-eqz v2, :cond_7

    .line 2327
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    if-nez p1, :cond_6

    .line 2328
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    move-object p1, v0

    .line 2331
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v1, "android.media.metadata.ART"

    .line 2332
    invoke-virtual {p1, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 2333
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 2331
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_3

    .line 2335
    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_8

    .line 2336
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 2338
    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 2339
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$29;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$29;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;IIZ)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 2355
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V

    :goto_3
    return-void

    :cond_9
    :goto_4
    return-void
.end method

.method private setFlagForStartCastControllerActivity()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "ccl-start-cast-activity"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private setUpMediaSession(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2201
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 2205
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    .line 2206
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2207
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    const-string v5, "TAG"

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2209
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 2211
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 2212
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v3, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$28;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$28;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 2245
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2248
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastControllerPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2250
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    if-nez p1, :cond_3

    .line 2253
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const/4 v5, 0x0

    .line 2254
    invoke-virtual {v2, v5, v3, v4, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 2253
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 2256
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 2257
    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    const-wide/16 v2, 0x200

    .line 2258
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 2256
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 2262
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateLockScreenImage(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 2265
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSessionMetadata()V

    .line 2267
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method private startNotificationService()Z
    .locals 4

    const/4 v0, 0x4

    .line 794
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 797
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "startNotificationService()"

    invoke-static {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mNotificationServiceClass:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.libraries.cast.companionlibrary.action.notificationvisibility"

    .line 800
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "visible"

    .line 801
    iget-boolean v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mUiVisible:Z

    xor-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 802
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private stopNotificationService()V
    .locals 4

    const/4 v0, 0x4

    .line 806
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mNotificationServiceClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method private stopProgressTimer()V
    .locals 2

    .line 3009
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped TrickPlay Timer"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressHandler:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressHandler:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3011
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressHandler:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private updateLockScreenImage(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2294
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setBitmapForLockScreen(Lcom/google/android/gms/cast/MediaInfo;)V

    return-void
.end method

.method private updateMediaSession(Z)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x2

    .line 2363
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2366
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 2370
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 2371
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setUpMediaSession(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 2373
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_6

    .line 2374
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    :goto_0
    if-eqz p1, :cond_4

    move v0, v1

    .line 2377
    :cond_4
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastControllerPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2379
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 2381
    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2382
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    const-wide/16 v1, 0x200

    .line 2383
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 2381
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2386
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set up MediaSessionCompat due to network issues"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateMediaSessionMetadata()V
    .locals 11

    .line 2395
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2401
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2405
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v1

    .line 2406
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2407
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    move-object v2, v3

    :goto_0
    const-string v3, "android.media.metadata.TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    .line 2413
    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2412
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.ALBUM_ARTIST"

    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    .line 2416
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 2417
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2416
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2415
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    const-string v5, "com.google.android.gms.cast.metadata.TITLE"

    .line 2420
    invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2419
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v5, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 2423
    invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2422
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.DURATION"

    .line 2425
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v5

    .line 2424
    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 2426
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 2427
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 2429
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 2431
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    .line 2432
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    .line 2431
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2433
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v3, "android.media.metadata.DISPLAY_ICON"

    .line 2434
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 2435
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 2433
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_2

    .line 2437
    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v1, :cond_5

    .line 2438
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v1, v7}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 2440
    :cond_5
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$30;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$30;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 2455
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2461
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update Media Session due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2459
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update Media Session due to resource not found"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method private updateMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 280
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 281
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getStreamDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setStreamType(I)V

    .line 285
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    iget v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    invoke-interface {p1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setPlaybackStatus(II)V

    .line 286
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDeviceName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setSubtitle(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 288
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setTitle(Ljava/lang/String;)V

    .line 289
    invoke-static {v0, v6}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setIcon(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private updateMiniControllers()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 302
    :try_start_2
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v4, "updateMiniControllers() Failed to update mini controller"

    invoke-static {v3, v4, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateProgress(II)V
    .locals 3

    .line 3019
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    monitor-enter v0

    .line 3020
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;

    .line 3021
    invoke-interface {v2, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setProgress(II)V

    goto :goto_0

    .line 3023
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressWatchers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/ProgressWatcher;

    .line 3026
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/ProgressWatcher;->setProgress(II)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 3023
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V
    .locals 1

    const/4 v0, 0x0

    .line 2569
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;)V

    return-void
.end method

.method public addMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 2539
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    monitor-enter v0

    .line 2540
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 2541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    move-object p2, p0

    .line 2543
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;)V

    .line 2546
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaLoaded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2547
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V

    const/4 p2, 0x0

    .line 2548
    invoke-interface {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setVisibility(I)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2551
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get the status of media playback on receiver"

    invoke-static {v0, v1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2553
    :cond_1
    :goto_0
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully added the new MiniController "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2555
    :cond_2
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to adding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but it was already registered, skipping this step"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    :goto_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressHandler:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressHandler:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2559
    :cond_3
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->restartProgressTimer()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2541
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public declared-synchronized addProgressWatcher(Lcom/google/android/libraries/cast/companionlibrary/widgets/ProgressWatcher;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2519
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressWatchers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2517
    monitor-exit p0

    throw p1

    .line 2521
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public addTracksSelectedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTracksSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2500
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addBaseCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;)V

    .line 2501
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2502
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully added the new CastConsumer listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2498
    monitor-exit p0

    throw p1

    .line 2504
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public adjustVolume(D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 689
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getVolume()D

    move-result-wide v0

    add-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, p1

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double p1, v0, v3

    if-gez p1, :cond_1

    move-wide p1, v3

    goto :goto_0

    :cond_1
    move-wide p1, v0

    .line 695
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setVolume(D)V

    return-void
.end method

.method public clearMediaSession()V
    .locals 6

    .line 2469
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "clearMediaSession()"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2470
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2471
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLockScreenFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 2474
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_1

    .line 2475
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionIconFetchTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 2477
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2478
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_2

    .line 2479
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 2480
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 2481
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 2482
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 2483
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 2484
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 2485
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_2
    return-void
.end method

.method public forward(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1733
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forward(): attempting to forward media by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1735
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1736
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to seek a video with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getApproximateStreamPosition()J

    move-result-wide v0

    int-to-long v2, p1

    add-long v4, v0, v2

    long-to-int p1, v4

    .line 1740
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->seek(I)V

    return-void
.end method

.method public getActiveTrackIds()[J
    .locals 1

    .line 2927
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCastOptionBuilder(Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 2

    .line 2598
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/Cast$CastOptions;->builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2599
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2600
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    :cond_0
    return-object p1
.end method

.method public getCurrentMediaPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 782
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 783
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 784
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getApproximateStreamPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getDataNamespace()Ljava/lang/String;
    .locals 1

    .line 3040
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    .line 1936
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    return v0
.end method

.method public getMediaAuthService()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    return-object v0
.end method

.method public getMediaDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 753
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 754
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getStreamDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMediaQueue()Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;
    .locals 1

    .line 2977
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaQueue:Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    return-object v0
.end method

.method public getMediaSessionCompatToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public getMediaTimeRemaining()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 766
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 767
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLiveStreamDuration:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getStreamDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 771
    invoke-virtual {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getApproximateStreamPosition()J

    move-result-wide v2

    sub-long v4, v0, v2

    move-wide v0, v4

    :goto_0
    return-wide v0
.end method

.method public final getNotificationServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mNotificationServiceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPlaybackStatus()I
    .locals 1

    .line 1910
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    return v0
.end method

.method public getPreLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreLoadingItem:Lcom/google/android/gms/cast/MediaQueueItem;

    return-object v0
.end method

.method public getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 619
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 620
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteMediaPlayer()Lcom/google/android/gms/cast/RemoteMediaPlayer;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    return-object v0
.end method

.method public getRemoteMediaUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 563
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    .line 566
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw v0
.end method

.method public getTargetActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2667
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTargetActivity:Ljava/lang/Class;

    return-object v0
.end method

.method public getTracksPreferenceManager()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;
    .locals 1

    .line 2919
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTrackManager:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    return-object v0
.end method

.method public getVolume()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 632
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;->STREAM:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    if-ne v0, v1, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 634
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamVolume()D

    move-result-wide v0

    return-wide v0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceVolume()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVolumeStep()D
    .locals 2

    .line 2740
    iget-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeStep:D

    return-wide v0
.end method

.method public isMute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 717
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;->STREAM:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    if-ne v0, v1, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 719
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->isMute()Z

    move-result v0

    return v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isDeviceMute()Z

    move-result v0

    return v0
.end method

.method public isRemoteMediaLoaded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 606
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRemoteMediaPaused()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 593
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoteMediaPlaying()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 580
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isRemoteStreamLive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadMedia(Lcom/google/android/gms/cast/MediaInfo;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 981
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V

    return-void
.end method

.method public loadMedia(Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 997
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;[JZILorg/json/JSONObject;)V

    return-void
.end method

.method public loadMedia(Lcom/google/android/gms/cast/MediaInfo;[JZILorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1016
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "loadMedia"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-nez p1, :cond_0

    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1022
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to load a video with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v4, p4

    move-object v2, p1

    move v3, p3

    move-object v6, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$3;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1027
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public notifyTracksSelectedListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2965
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tracks must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2967
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTracksSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2968
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setActiveTracks(Ljava/util/List;)V

    goto :goto_1

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTracksSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;

    .line 2971
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;->onTracksSelected(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 871
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApplicationConnected() reached with sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and mReconnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mReconnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 873
    iput p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApplicationErrorCode:I

    .line 874
    iget p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mReconnectionStatus:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 877
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 879
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "route-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 881
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Found the correct route during reconnection attempt"

    invoke-static {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 884
    iput p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mReconnectionStatus:I

    .line 885
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startNotificationService()Z

    const/4 p2, -0x1

    .line 893
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->attachDataChannel()V

    .line 894
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->attachMediaChannel()V

    .line 895
    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mSessionId:Ljava/lang/String;

    .line 897
    iget-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v0, "session-id"

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mSessionId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p3

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 899
    invoke-virtual {p3, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 910
    iget-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 911
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 917
    sget-object p3, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p4, "Failed to attach media/data channel due to network issues"

    invoke-static {p3, p4, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 918
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onFailed(II)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 914
    sget-object p3, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p4, "Failed to attach media/data channel due to network issues"

    invoke-static {p3, p4, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 915
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_trans:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onFailed(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onApplicationConnectionFailed(I)V
    .locals 3

    .line 948
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationConnectionFailed() reached with errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApplicationErrorCode:I

    .line 950
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mReconnectionStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x7d5

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    .line 954
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mReconnectionStatus:I

    .line 955
    invoke-virtual {p0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 959
    invoke-interface {v2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onApplicationConnectionFailed(I)V

    goto :goto_0

    .line 961
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 962
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz p1, :cond_2

    .line 963
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "onApplicationConnectionFailed(): Setting route to default"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onApplicationStopFailed(I)V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 942
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onApplicationStopFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 2607
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    .line 2608
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSession(Z)V

    const/4 p1, 0x1

    .line 2609
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 p1, 0x0

    .line 2610
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    .line 2611
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopNotificationService()V

    return-void
.end method

.method public onConnectivityRecovered()V
    .locals 0

    .line 930
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->reattachMediaChannel()V

    .line 931
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->reattachDataChannel()V

    .line 932
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onConnectivityRecovered()V

    return-void
.end method

.method protected onDeviceUnselected()V
    .locals 1

    .line 2589
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopNotificationService()V

    .line 2590
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->detachMediaChannel()V

    .line 2591
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeDataChannel()Z

    const/4 v0, 0x1

    .line 2592
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v0, 0x0

    .line 2593
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    return-void
.end method

.method public onDisconnected(ZZZ)V
    .locals 0

    .line 2617
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDisconnected(ZZZ)V

    const/4 p1, 0x0

    .line 2618
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMiniControllersVisibility(Z)V

    if-eqz p2, :cond_0

    .line 2619
    iget-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mConnectionSuspended:Z

    if-nez p1, :cond_0

    .line 2620
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->clearMediaSession()V

    :cond_0
    const/4 p1, 0x1

    .line 2622
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 p1, 0x0

    .line 2623
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    .line 2624
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaQueue:Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    return-void
.end method

.method public onDispatchVolumeKeyEvent(Landroid/view/KeyEvent;D)Z
    .locals 3

    .line 2686
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2687
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2688
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    neg-double p1, p2

    .line 2695
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->changeVolume(DZ)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 2690
    :pswitch_1
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->changeVolume(DZ)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailed(II)V
    .locals 3

    .line 2655
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    invoke-super {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onFailed(II)V

    return-void
.end method

.method public onPlayPauseClicked(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 320
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->pause()V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result p1

    .line 324
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->play()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRemoteMediaPlayerMetadataUpdated()V
    .locals 3

    .line 2176
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onRemoteMediaPlayerMetadataUpdated() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateMediaSessionMetadata()V

    .line 2178
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2179
    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onRemoteMediaPlayerMetadataUpdated()V

    goto :goto_0

    .line 2182
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->updateLockScreenImage(Lcom/google/android/gms/cast/MediaInfo;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2184
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update lock screen metadata due to a network issue"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onTargetActivityInvoked(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 339
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTargetActivity:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "media"

    .line 340
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->mediaInfoToBundle(Lcom/google/android/gms/cast/MediaInfo;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onTextTrackEnabledChanged(Z)V
    .locals 2

    .line 2848
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onTextTrackEnabledChanged() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2850
    new-array v0, v0, [J

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setActiveTrackIds([J)V

    .line 2853
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2854
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onTextTrackEnabledChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTextTrackLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .line 2862
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onTextTrackLocaleChanged() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2864
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onTextTrackLocaleChanged(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V
    .locals 6

    .line 2821
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onTextTrackStyleChanged() reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2825
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setTextTrackStyle(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$33;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$33;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 2826
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 2835
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2837
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2839
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextTrackStyleChanged(): Failed to inform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onUpcomingPlayClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 347
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onUpcomingPlayClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpcomingStopClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 354
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onUpcomingStopClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1660
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->pause(Lorg/json/JSONObject;)V

    return-void
.end method

.method public pause(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1672
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "attempting to pause media"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1674
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1675
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to pause a video with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$19;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$19;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1679
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1606
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->play(Lorg/json/JSONObject;)V

    return-void
.end method

.method public play(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1560
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempting to play media at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1562
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to play a video with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1565
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->seekAndPlay(I)V

    return-void
.end method

.method public play(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1577
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "play(customData)"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1579
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1580
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to play a video with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$17;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$17;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1584
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueAppendItem(Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1397
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueAppendItem(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$12;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$12;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1398
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueInsertBeforeCurrentAndPlay(Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1485
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1486
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1487
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to insert into queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueInsertItems(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;

    invoke-direct {p2, p0, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$15;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;Lorg/json/JSONObject;)V

    .line 1495
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 1491
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item cannot be empty or insertBeforeItemId cannot be invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queueInsertItems([Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1109
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "queueInsertItems"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-eqz p1, :cond_2

    .line 1111
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1115
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to insert into queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1119
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueInsertItems(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$5;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1120
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 1112
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items cannot be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queueJumpToItem(ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-nez p1, :cond_0

    .line 1189
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1192
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to jump in a queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1196
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueJumpToItem(Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$7;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$7;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueLoad([Lcom/google/android/gms/cast/MediaQueueItem;IILorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1066
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "queueLoad"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-eqz p1, :cond_2

    .line 1068
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1072
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to queue one or more videos with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1076
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueLoad(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$4;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1077
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public queueMoveItemToNewIndex(IILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1371
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueMoveItemToNewIndex(Lcom/google/android/gms/common/api/GoogleApiClient;IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$11;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$11;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1372
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueNext(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1421
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1422
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1423
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to update the queue with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1427
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueNext(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$13;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$13;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queuePrev(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1450
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1451
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1452
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to update the queue with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1456
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queuePrev(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$14;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$14;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueRemoveItem(ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1264
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "queueRemoveItem"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-nez p1, :cond_0

    .line 1267
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1270
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to remove an item from queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1274
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueRemoveItem(Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$9;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$9;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueRemoveItems([ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1224
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "queueRemoveItems"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-eqz p1, :cond_2

    .line 1226
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1230
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to remove items from queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1234
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueRemoveItems(Lcom/google/android/gms/common/api/GoogleApiClient;[ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$8;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$8;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 1227
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIds cannot be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queueReorderItems([IILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1327
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "queueReorderItems"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    if-eqz p1, :cond_2

    .line 1329
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_1

    .line 1333
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to reorder items in a queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1337
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueReorderItems(Lcom/google/android/gms/common/api/GoogleApiClient;[IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$10;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$10;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1338
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    .line 1330
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder cannot be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queueSetRepeatMode(ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1528
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1529
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1530
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to update the queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1534
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueSetRepeatMode(Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$16;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$16;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public queueUpdateItems([Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1150
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1151
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1152
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string p2, "Trying to update the queue with no active media session"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1156
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueUpdateItems(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$6;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$6;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public removeDataChannel()Z
    .locals 5

    .line 2023
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2027
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    .line 2028
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 2030
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataChannel:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 2031
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v3, "cast-custom-data-namespace"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2034
    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeDataChannel() failed to remove namespace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public removeMediaAuthService()V
    .locals 1

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    return-void
.end method

.method public removeMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2577
    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;)V

    .line 2578
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    monitor-enter v0

    .line 2579
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2580
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2581
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stopProgressTimer()V

    .line 2583
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized removeProgressWatcher(Lcom/google/android/libraries/cast/companionlibrary/widgets/ProgressWatcher;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2525
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mProgressWatchers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2523
    monitor-exit p0

    throw p1

    .line 2527
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeTracksSelectedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTracksSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2512
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeBaseCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;)V

    .line 2513
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2510
    monitor-exit p0

    throw p1

    .line 2515
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public seek(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1702
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "attempting to seek media"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1704
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1705
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to seek a video with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$20;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$20;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1711
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public seekAndPlay(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1752
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "attempting to seek media"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1754
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1755
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to seekAndPlay a video with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1758
    :cond_0
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$21;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$21;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 1769
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v3, p1

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 1771
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public sendDataMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No Data Namespace is configured"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2004
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 2005
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mDataNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$27;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$27;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 2006
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setActiveTrackIds([J)V
    .locals 2

    .line 2776
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setActiveMediaTracks(Lcom/google/android/gms/common/api/GoogleApiClient;[J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$31;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$31;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 2780
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setActiveTracks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)V"
        }
    .end annotation

    .line 2758
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2759
    new-array v0, v1, [J

    goto :goto_1

    .line 2761
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2762
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2763
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2766
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setActiveTrackIds([J)V

    .line 2767
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 2768
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getTracksPreferenceManager()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V

    :cond_2
    return-void
.end method

.method public setLiveStreamDuration(J)V
    .locals 0

    .line 2750
    iput-wide p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mLiveStreamDuration:J

    return-void
.end method

.method public setMediaAuthService(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 736
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;->STREAM:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    if-ne v0, v1, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 738
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setDeviceMute(Z)V

    :goto_0
    return-void
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V
    .locals 6

    .line 2798
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setTextTrackStyle(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$32;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$32;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    .line 2799
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 2808
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVideoConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;

    .line 2810
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;->onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2812
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextTrackStyleChanged(): Failed to inform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVolume(D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    cmpg-double v0, p1, v3

    if-gez v0, :cond_1

    move-wide p1, v3

    .line 658
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;->STREAM:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    if-ne v0, v1, :cond_2

    .line 659
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkRemoteMediaPlayerAvailable()V

    .line 660
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$1;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1

    .line 673
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setDeviceVolume(D)V

    :goto_1
    return-void
.end method

.method public setVolumeStep(D)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 2732
    :cond_0
    iput-wide p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeStep:D

    return-object p0

    .line 2730
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Volume Step should be between 0 and 1, inclusive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setVolumeType(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mVolumeType:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$VolumeType;

    return-void
.end method

.method protected setupTrackManager()V
    .locals 2

    const/16 v0, 0x10

    .line 265
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTrackManager:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    .line 267
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->registerCaptionListener(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public shouldRemoteUiBeVisible(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    .line 521
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    return v1

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startVideoCastControllerActivity(Landroid/content/Context;Landroid/os/Bundle;IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 425
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Landroid/os/Bundle;IZLorg/json/JSONObject;)V

    return-void
.end method

.method public startVideoCastControllerActivity(Landroid/content/Context;Landroid/os/Bundle;IZLorg/json/JSONObject;)V
    .locals 2

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "media"

    .line 404
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "startPoint"

    .line 405
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "shouldStart"

    .line 406
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p5, :cond_0

    const-string p2, "customData"

    .line 408
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setFlagForStartCastControllerActivity()V

    .line 411
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V
    .locals 0

    .line 454
    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->mediaInfoToBundle(Lcom/google/android/gms/cast/MediaInfo;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Landroid/os/Bundle;IZ)V

    return-void
.end method

.method public startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 436
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    .line 437
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "hasAuth"

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setFlagForStartCastControllerActivity()V

    .line 440
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1648
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->stop(Lorg/json/JSONObject;)V

    return-void
.end method

.method public stop(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1618
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1620
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    if-nez v0, :cond_0

    .line 1621
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to stop a stream with no active media session"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw p1

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->stop(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$18;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$18;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public togglePlayback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1783
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->checkConnectivity()V

    .line 1784
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->pause()V

    goto :goto_0

    .line 1788
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mIdleReason:I

    if-ne v0, v1, :cond_1

    .line 1790
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;ZI)V

    goto :goto_0

    .line 1792
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->play()V

    :goto_0
    return-void
.end method

.method public updateCaptionSummary(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    .locals 2

    .line 2907
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_info_na:I

    const/16 v1, 0x10

    .line 2908
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2909
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mTrackManager:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_on:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_off:I

    .line 2911
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 2912
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public updateMiniControllersVisibility(Z)V
    .locals 4

    .line 365
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMiniControllersVisibility() reached with visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    .line 368
    :goto_1
    invoke-interface {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateMiniControllersVisibilityForUpcoming(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMiniControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;

    .line 376
    invoke-interface {v2, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setUpcomingItem(Lcom/google/android/gms/cast/MediaQueueItem;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 377
    :goto_1
    invoke-interface {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;->setUpcomingVisibility(Z)V

    goto :goto_0

    .line 379
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateVolume(I)V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 705
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return-void
.end method
