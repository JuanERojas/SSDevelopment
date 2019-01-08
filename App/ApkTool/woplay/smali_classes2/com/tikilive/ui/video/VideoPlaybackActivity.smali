.class public Lcom/tikilive/ui/video/VideoPlaybackActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;


# static fields
.field public static final ARG_VIDEO:Ljava/lang/String; = "video"

.field public static final ARG_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.VideoPlaybackActivity"

.field private static final TAG_ADAPTIVE_MEDIA_SOURCE:Ljava/lang/String; = "AdaptiveMediaSource"


# instance fields
.field private controllerShowTimeoutMs:I

.field private mAnnotationInfo:Landroid/widget/LinearLayout;

.field private mAnnotationInfoTimer:Ljava/util/Timer;

.field private mAnnotationInfoTitle:Landroid/widget/TextView;

.field private mAnnotationSong:Landroid/widget/LinearLayout;

.field private mAnnotationSongTimer:Ljava/util/Timer;

.field private mAnnotationSongTitle:Landroid/widget/TextView;

.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

.field private final mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioNoisyReceiverRegistered:Z

.field private mBuffering:Landroid/widget/ProgressBar;

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerCoordinator:Landroid/support/design/widget/CoordinatorLayout;

.field private mExoDisplayedDuration:Landroid/widget/TextView;

.field private mExoDuration:Landroid/widget/TextView;

.field private mInfoModeActive:Z

.field private mInfoModeConfirm:Landroid/widget/LinearLayout;

.field private mInfoModeDismiss:Landroid/widget/Button;

.field private mIsCastEnabled:Z

.field private mIsNetworkDisconnected:Z

.field private mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

.field private mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

.field private mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mSelectedVideo:Lcom/tikilive/ui/model/Video;

.field private mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

.field private mVideoDescription:Landroid/widget/TextView;

.field private mVideoDetails:Landroid/view/ViewStub;

.field private mVideoDuration:Landroid/widget/TextView;

.field private mVideoName:Landroid/widget/TextView;

.field private mVideoPlaybackErrorCounter:I

.field private mVideoPlaybackErrorDelay:I

.field private mVideoPlaybackErrorHandler:Landroid/os/Handler;

.field private mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

.field private mVideoRating:Landroid/widget/RatingBar;

.field private pickSubtitles:Landroid/widget/LinearLayout;

.field private pickSubtitlesButton:Landroid/widget/ImageButton;

.field private pickSubtitlesCloseButton:Landroid/widget/Button;

.field private pickSubtitlesContainer:Landroid/widget/LinearLayout;

.field private textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorCounter:I

    .line 125
    iput v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorDelay:I

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    .line 130
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mInfoModeActive:Z

    .line 148
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsNetworkDisconnected:Z

    .line 158
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    .line 159
    new-instance v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$1;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x1388

    .line 180
    iput v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->controllerShowTimeoutMs:I

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mControllerCoordinator:Landroid/support/design/widget/CoordinatorLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsNetworkDisconnected:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/tikilive/ui/video/VideoPlaybackActivity;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsNetworkDisconnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorCounter:I

    return p0
.end method

.method static synthetic access$1202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorCounter:I

    return p1
.end method

.method static synthetic access$1208(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I
    .locals 2

    .line 98
    iget v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorCounter:I

    return v0
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->initialiseVideo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/tikilive/ui/video/VideoPlaybackActivity;Lcom/tikilive/ui/model/Video;)Lcom/tikilive/ui/model/Video;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->onVideoAvailable()V

    return-void
.end method

.method static synthetic access$1600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->redirectVideoLibrary()V

    return-void
.end method

.method static synthetic access$1700(J)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getTimeString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mExoDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mExoDisplayedDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->uncheckAllSubtitles()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mBuffering:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorDelay:I

    return p0
.end method

.method static synthetic access$2202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorDelay:I

    return p1
.end method

.method static synthetic access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/tikilive/ui/video/VideoPlaybackActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->loadVideoDetailsFromServer(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/backend/Api;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/support/v7/app/MediaRouteButton;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->updateSubtitleButton()V

    return-void
.end method

.method static synthetic access$3000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitles:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDescription:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->controllerShowTimeoutMs:I

    return p1
.end method

.method static synthetic access$700(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/Button;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesCloseButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "ENDED"

    return-object p1

    :pswitch_1
    const-string p1, "READY"

    return-object p1

    :pswitch_2
    const-string p1, "BUFFERING"

    return-object p1

    :pswitch_3
    const-string p1, "IDLE"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 13

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "?"

    return-object p0

    .line 1029
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 1030
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v4, p0, v2

    .line 1032
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p0

    .line 1033
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v6, v4, v2

    .line 1035
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 1036
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long v8, v6, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-lez v6, :cond_1

    .line 1039
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%02d:%02d:%02d.%03d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v10

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v12, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v12, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v12, v4

    invoke-static {v6, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1041
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d.%03d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialiseVideo()V
    .locals 3

    .line 468
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    .line 469
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    if-nez v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 472
    invoke-direct {p0, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->loadVideoDetailsFromServer(I)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->redirectVideoLibrary()V

    goto :goto_0

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->onVideoAvailable()V

    :goto_0
    return-void
.end method

.method private loadVideoDetailsFromServer(I)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideo"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    new-instance v2, Lcom/tikilive/ui/video/VideoPlaybackActivity$6;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$6;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tikilive/ui/backend/Api;->getVideo(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private onVideoAvailable()V
    .locals 10

    .line 569
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 575
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    .line 584
    :cond_2
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryPlayer(I)V

    .line 587
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Video;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 589
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const v0, 0x7f1201bb

    .line 590
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_4
    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoRating:Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Video;->getRating()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 594
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDuration:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Video;->getDurationFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getVideoMediaInfo(Lcom/tikilive/ui/model/Video;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    .line 600
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 601
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v3, Lcom/tikilive/ui/video/VideoPlaybackActivity$7;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$7;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 610
    new-instance v3, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;

    invoke-direct {v3, v2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 611
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 614
    new-instance v3, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 617
    new-instance v5, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 622
    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v5, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    const v3, 0x7f120028

    .line 625
    invoke-virtual {p0, v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v6, v3, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v5, p0, v2, v6}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 628
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v5, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    .line 631
    invoke-virtual {v5}, Lcom/tikilive/ui/model/Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/tikilive/ui/video/VideoPlaybackActivity$8;

    invoke-direct {v6, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$8;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    .line 630
    invoke-virtual {v3, v5, v0, v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    .line 695
    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v5, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    invoke-direct {v5, p0, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;Lcom/google/android/exoplayer2/source/MediaSource;)V

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 887
    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v5, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorCounter:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v0, v7, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 891
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 893
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 895
    :catch_0
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    goto :goto_1

    .line 898
    :cond_6
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 901
    :goto_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_b

    .line 903
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addMediaRouterButton(Landroid/support/v7/app/MediaRouteButton;)V

    .line 905
    new-instance v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$10;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    .line 941
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 943
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isAnyRouteAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 947
    :try_start_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaLoaded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 949
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_8

    .line 951
    sget-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v1, "starting cast - connected, but getRemoteMediaInformation() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    long-to-int v3, v8

    invoke-virtual {v0, p0, v1, v3, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V

    goto :goto_4

    .line 955
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 956
    sget-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v1, "starting cast - connected, but remote media is different than current media"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    long-to-int v3, v8

    invoke-virtual {v0, p0, v1, v3, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V

    goto :goto_4

    .line 960
    :cond_9
    sget-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v1, "not starting cast - current media is already loaded on the remote player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 964
    :cond_a
    sget-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v1, "starting cast - connected, but no remote media is loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    long-to-int v3, v8

    invoke-virtual {v0, p0, v1, v3, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 971
    sget-object v1, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, "NoConnectionException thrown when trying to get remote media information"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    .line 969
    sget-object v1, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, "TransientNetworkDisconnectionException thrown when trying to get remote media information"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_d

    .line 977
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->hasAds()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 978
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Ads;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Ads;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$11;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$11;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Ads;->getSettings(Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V

    goto :goto_5

    .line 986
    :cond_c
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 991
    :cond_d
    :goto_5
    new-instance v0, Lcom/tikilive/ui/helper/TextTracksHelper;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, v1, v4, v2}, Lcom/tikilive/ui/helper/TextTracksHelper;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    return-void

    :cond_e
    :goto_6
    return-void
.end method

.method private redirectVideoLibrary()V
    .locals 2

    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 1005
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerAudioNoisyReceiver()V
    .locals 3

    .line 1046
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/tikilive/ui/video/VideoPlaybackActivity;->AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private turnOffInfoMode()V
    .locals 2

    const/4 v0, 0x0

    .line 995
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mInfoModeActive:Z

    const-string v1, "Info mode turned off"

    .line 996
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private uncheckAllSubtitles()V
    .locals 4

    .line 1100
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1102
    iget-object v3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 1103
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterAudioNoisyReceiver()V
    .locals 2

    .line 1053
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1055
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private updateSubtitleButton()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public closePickSubstitles()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitles:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->controllerShowTimeoutMs:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerShowTimeoutMs(I)V

    return-void
.end method

.method public isPickSubstitlesOpen()Z
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitles:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->isPickSubstitlesOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->closePickSubstitles()V

    goto :goto_0

    .line 1137
    :cond_0
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 186
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0a00ec

    .line 189
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mControllerCoordinator:Landroid/support/design/widget/CoordinatorLayout;

    const p1, 0x7f0a02b4

    .line 190
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const p1, 0x7f0a005b

    .line 191
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mBuffering:Landroid/widget/ProgressBar;

    const p1, 0x7f0a02a8

    .line 192
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoName:Landroid/widget/TextView;

    const p1, 0x7f0a02a3

    .line 193
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDescription:Landroid/widget/TextView;

    const p1, 0x7f0a00ef

    .line 194
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mExoDuration:Landroid/widget/TextView;

    const p1, 0x7f0a00ee

    .line 195
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mExoDisplayedDuration:Landroid/widget/TextView;

    const p1, 0x7f0a02a4

    .line 196
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDetails:Landroid/view/ViewStub;

    .line 197
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDetails:Landroid/view/ViewStub;

    const v0, 0x7f0d0045

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 198
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDetails:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p1, 0x7f0a02a9

    .line 199
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoRating:Landroid/widget/RatingBar;

    const p1, 0x7f0a02a5

    .line 200
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoDuration:Landroid/widget/TextView;

    const p1, 0x7f0a015d

    .line 203
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mInfoModeConfirm:Landroid/widget/LinearLayout;

    const p1, 0x7f0a015e

    .line 204
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mInfoModeDismiss:Landroid/widget/Button;

    const p1, 0x7f0a0033

    .line 205
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationSong:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0034

    .line 206
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationSongTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0031

    .line 207
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationInfo:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0032

    .line 208
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationInfoTitle:Landroid/widget/TextView;

    .line 211
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsCastEnabled:Z

    const p1, 0x7f0a01b8

    .line 212
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteButton;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    .line 215
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 218
    new-instance p1, Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-direct {p1, p0, p0}, Lcom/tikilive/ui/helper/AudioFocusHelper;-><init>(Landroid/content/Context;Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;)V

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    .line 221
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->registerAudioNoisyReceiver()V

    .line 224
    invoke-static {p0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const p1, 0x7f0a0100

    .line 227
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const p1, 0x7f0a00f4

    .line 228
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitles:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00f6

    .line 229
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00f5

    .line 230
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesCloseButton:Landroid/widget/Button;

    .line 232
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->pickSubtitlesCloseButton:Landroid/widget/Button;

    new-instance v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$3;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 431
    sget-object v0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 448
    :sswitch_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 449
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    .line 439
    :sswitch_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 452
    :sswitch_2
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    .line 456
    :goto_0
    :sswitch_3
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x52 -> :sswitch_3
        0x53 -> :sswitch_3
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .line 374
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 376
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideo"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 380
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsNetworkDisconnected:Z

    .line 389
    :cond_1
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsCastEnabled:Z

    if-eqz v0, :cond_2

    .line 391
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->decrementUiCounter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 400
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationInfoTimer:Ljava/util/Timer;

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationInfo:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationSongTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationSongTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 406
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationSongTimer:Ljava/util/Timer;

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAnnotationSong:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_5

    .line 411
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    iput-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    :cond_6
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 305
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 307
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->initialiseVideo()V

    .line 309
    new-instance v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mIsCastEnabled:Z

    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->incrementUiCounter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 422
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onStop()V

    .line 424
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->unregisterAudioNoisyReceiver()V

    .line 426
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->shouldPlayOnAudioFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    .line 1086
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 1088
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public toggleInfoMode()V
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mInfoModeActive:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->turnOffInfoMode()V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->turnOnInfoMode()V

    :goto_0
    return-void
.end method

.method public turnOnInfoMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity;->mInfoModeActive:Z

    return-void
.end method
