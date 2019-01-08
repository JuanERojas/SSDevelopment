.class public Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.super Landroid/support/v4/app/Fragment;
.source "VideoCastControllerFragment.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;
    }
.end annotation


# static fields
.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG:Ljava/lang/String;

.field private static sDialogCanceled:Z = false


# instance fields
.field protected mAuthSuccess:Z

.field private mAuthThread:Ljava/lang/Thread;

.field private mCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;

.field private mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mHandler:Landroid/os/Handler;

.field private mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field private mIsFresh:Z

.field private mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

.field private mMediaAuthTimer:Ljava/util/Timer;

.field private mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

.field private mOverallState:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

.field private mPlaybackState:I

.field private mSeekbarTimer:Ljava/util/Timer;

.field private mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

.field private mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthSuccess:Z

    .line 94
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mOverallState:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    .line 97
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updatePlayerStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method static synthetic access$1902(Z)Z
    .locals 0

    .line 77
    sput-boolean p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->sDialogCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mOverallState:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->onReady(Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateClosedCaptionState()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateMetadata()V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaAuthService()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object v0

    .line 827
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 831
    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthThread:Ljava/lang/Thread;

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaAuthService()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 834
    invoke-interface {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->setMediaAuthListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthListener;)V

    .line 835
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeMediaAuthService()V

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_3

    .line 838
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 841
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 843
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    if-eqz v0, :cond_5

    .line 844
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    invoke-static {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->access$1402(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 846
    :cond_5
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->sDialogCanceled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    if-eqz v0, :cond_6

    .line 847
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->CANCELED_BY_USER:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->abortAuthorization(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;)V

    .line 850
    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeTracksSelectedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;)V

    return-void
.end method

.method private handleMediaAuthTask(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->showLoading(Z)V

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getPendingMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getPendingMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 170
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setSubTitle(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthThread:Ljava/lang/Thread;

    .line 180
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    .line 184
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthThread:Ljava/lang/Thread;

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/Thread;)V

    .line 185
    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getTimeout()J

    move-result-wide v2

    .line 184
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
    .locals 3

    .line 573
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;-><init>()V

    .line 574
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extras"

    .line 575
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onReady(Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V
    .locals 1

    .line 341
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    .line 342
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateClosedCaptionState()V

    .line 344
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setStreamType(I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 347
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 348
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    .line 349
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V

    goto :goto_1

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 353
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 355
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 357
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 360
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string p3, "Failed to get playback and media information"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    .line 363
    :goto_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaQueue()Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 367
    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->getCount()I

    move-result p2

    .line 368
    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/MediaQueue;->getCurrentItemPosition()I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 370
    :goto_2
    iget-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {p3, p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->onQueueItemsUpdated(II)V

    .line 371
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateMetadata()V

    .line 372
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->restartTrickplayTimer()V

    return-void
.end method

.method private restartTrickplayTimer()V
    .locals 7

    .line 395
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->stopTrickplayTimer()V

    .line 396
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSeekbarTimer:Ljava/util/Timer;

    .line 397
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSeekbarTimer:Ljava/util/Timer;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UpdateSeekbarTask;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 398
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Restarted TrickPlay Timer"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 2

    .line 666
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dlg"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showImage(Landroid/net/Uri;)V
    .locals 8

    if-nez p1, :cond_0

    .line 586
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder_large:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->access$1300(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setImage(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 595
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mUrlAndBitmap:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    .line 596
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 600
    new-instance v7, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;IIZLandroid/net/Uri;)V

    iput-object v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 616
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V

    return-void
.end method

.method private stopTrickplayTimer()V
    .locals 2

    .line 388
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Stopped TrickPlay Timer"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSeekbarTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSeekbarTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private togglePlayback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 713
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 715
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->play()V

    .line 716
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 717
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->restartTrickplayTimer()V

    goto :goto_1

    .line 720
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->pause()V

    .line 721
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    goto :goto_1

    .line 724
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 725
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 726
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->play()V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;ZI)V

    .line 730
    :goto_0
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 731
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->restartTrickplayTimer()V

    .line 736
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateClosedCaptionState()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 379
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getTracksPreferenceManager()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->hasAudioOrTextTrack(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setClosedCaptionState(I)V

    return-void
.end method

.method private updateMetadata()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    .line 429
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->showImage(Landroid/net/Uri;)V

    .line 430
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_2

    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    .line 434
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 435
    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 434
    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setTitle(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 437
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->adjustControllersForLiveStream(Z)V

    return-void
.end method

.method private updateOverallState()V
    .locals 3

    .line 403
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$6;->$SwitchMap$com$google$android$libraries$cast$companionlibrary$cast$player$VideoCastControllerFragment$OverallState:[I

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mOverallState:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaAuthService()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getPendingMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getPendingMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 407
    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setSubTitle(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->showLoading(Z)V

    :cond_1
    :goto_1
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePlayerStatus()V
    .locals 8

    .line 441
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    .line 443
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerStatus(), state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v1, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setStreamType(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 449
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_loading:I

    invoke-virtual {p0, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 452
    invoke-virtual {v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 451
    invoke-virtual {p0, v5, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setSubTitle(Ljava/lang/String;)V

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 470
    :pswitch_0
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    .line 471
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    if-eq v0, v1, :cond_4

    .line 472
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 473
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    goto/16 :goto_1

    .line 463
    :pswitch_1
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    .line 464
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 465
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 466
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    goto/16 :goto_1

    .line 456
    :pswitch_2
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    .line 457
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 458
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 459
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    goto :goto_1

    .line 477
    :pswitch_3
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 500
    :pswitch_4
    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 501
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    goto :goto_1

    .line 487
    :pswitch_5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    if-eq v0, v3, :cond_4

    .line 489
    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 490
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    goto :goto_1

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 496
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Failed to determine if stream is live"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 480
    :pswitch_6
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v0

    if-nez v0, :cond_4

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;)V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "extras"

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "media"

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    .line 125
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->setRetainInstance(Z)V

    .line 126
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addTracksSelectedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;)V

    .line 127
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object v3

    const-string v4, "ccl-start-cast-activity"

    const/4 v5, 0x0

    .line 128
    invoke-virtual {v3, v4, v5}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getBooleanFromPreference(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object v4

    const-string v6, "ccl-start-cast-activity"

    .line 133
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 132
    invoke-virtual {v4, v6, v7}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 135
    invoke-virtual {v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getNextPrevVisibilityPolicy()I

    move-result v6

    .line 134
    invoke-interface {v4, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setNextPreviousVisibilityPolicy(I)V

    const-string v4, "hasAuth"

    .line 136
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    iget-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    if-eqz p1, :cond_5

    .line 138
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->AUTHORIZING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mOverallState:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    .line 139
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaAuthService()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    .line 140
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->handleMediaAuthTask(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V

    .line 141
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->showImage(Landroid/net/Uri;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_5

    .line 144
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->PLAYBACK:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    iput-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mOverallState:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    const-string v4, "shouldStart"

    .line 145
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "customData"

    .line 146
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v7

    .line 152
    sget-object v8, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to unmarshalize custom data string: customData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->bundleToMediaInfo(Landroid/os/Bundle;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    const-string v6, "startPoint"

    .line 157
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 158
    :goto_1
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->onReady(Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->sDialogCanceled:Z

    .line 108
    check-cast p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    .line 109
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-void
.end method

.method public onAuthFailure(Ljava/lang/String;)V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthResult(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;Lcom/google/android/gms/cast/MediaInfo;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    .line 757
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthSuccess:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 759
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    .line 760
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 761
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 763
    :cond_0
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    .line 764
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateClosedCaptionState()V

    .line 765
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;

    invoke-direct {p3, p0, p2, p4, p5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/MediaInfo;ILorg/json/JSONObject;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 774
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    if-eqz p1, :cond_2

    .line 775
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 777
    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$4;

    invoke-direct {p2, p0, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 741
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateOverallState()V

    .line 742
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaAuthService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->showImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateMetadata()V

    .line 748
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updatePlayerStatus()V

    .line 749
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->updateControllersStatus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 515
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->stopTrickplayTimer()V

    .line 517
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->cleanup()V

    .line 518
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 564
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->decrementUiCounter()V

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    .line 566
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

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

    .line 707
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected returning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->togglePlayback()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 523
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    .line 527
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 528
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 534
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 535
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 536
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    if-nez v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->incrementUiCounter()V

    return-void

    .line 541
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mMediaStatus:Lcom/google/android/gms/cast/MediaStatus;

    .line 542
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MyCastConsumer;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 543
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mIsFresh:Z

    if-nez v0, :cond_5

    .line 544
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updatePlayerStatus()V

    .line 547
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mSelectedMedia:Lcom/google/android/gms/cast/MediaInfo;

    .line 548
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateClosedCaptionState()V

    .line 549
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->updateMetadata()V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 552
    :try_start_2
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get media information or status of media playback"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    instance-of v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    if-eqz v0, :cond_5

    .line 554
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->incrementUiCounter()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->incrementUiCounter()V

    throw v0
.end method

.method public onSkipNextClicked(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 856
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->showLoading(Z)V

    .line 857
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->queueNext(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSkipPreviousClicked(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 863
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->showLoading(Z)V

    .line 864
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->queuePrev(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 697
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->stopTrickplayTimer()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 671
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 672
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 674
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mImageAsyncTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 681
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 682
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    .line 683
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setPlaybackStatus(I)V

    .line 684
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->play(I)V

    goto :goto_0

    .line 685
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 686
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->seek(I)V

    .line 688
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->restartTrickplayTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 690
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to complete seek"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastController:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->closeActivity()V

    :goto_1
    return-void
.end method

.method public onTracksSelected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)V"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setActiveTracks(Ljava/util/List;)V

    return-void
.end method
