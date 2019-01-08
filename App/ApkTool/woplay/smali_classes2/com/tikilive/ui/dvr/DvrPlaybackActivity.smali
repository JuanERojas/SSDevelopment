.class public Lcom/tikilive/ui/dvr/DvrPlaybackActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "DvrPlaybackActivity.java"

# interfaces
.implements Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;


# static fields
.field public static final ARG_DVR_ITEM:Ljava/lang/String; = "dvr_item"

.field public static final ARG_DVR_ITEM_ID:Ljava/lang/String; = "dvr_item_id"

.field private static final AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "DvrPlaybackActivity"

.field private static final TAG_ADAPTIVE_MEDIA_SOURCE:Ljava/lang/String; = "AdaptiveMediaSource"


# instance fields
.field private mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

.field private final mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioNoisyReceiverRegistered:Z

.field private mBuffering:Landroid/widget/ProgressBar;

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerCoordinator:Landroid/support/design/widget/CoordinatorLayout;

.field private mDvrItemChannel:Landroid/widget/TextView;

.field private mDvrItemDate:Landroid/widget/TextView;

.field private mDvrItemDelimiter1:Landroid/widget/TextView;

.field private mDvrItemDelimiter2:Landroid/widget/TextView;

.field private mDvrItemProgress:Landroid/widget/ProgressBar;

.field private mDvrItemTimeDuration:Landroid/widget/TextView;

.field private final mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

.field private mExoDisplayedDuration:Landroid/widget/TextView;

.field private mExoDuration:Landroid/widget/TextView;

.field private mIsCastEnabled:Z

.field private mIsNetworkDisconnected:Z

.field private mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

.field private mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

.field private mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

.field private mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

.field private mVideoDescription:Landroid/widget/TextView;

.field private mVideoDetails:Landroid/view/ViewStub;

.field private mVideoName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    .line 91
    invoke-static {}, Lcom/tikilive/ui/model/DvrProvider;->getInstance()Lcom/tikilive/ui/model/DvrProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsNetworkDisconnected:Z

    .line 131
    iput-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    .line 132
    new-instance v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$1;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mControllerCoordinator:Landroid/support/design/widget/CoordinatorLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;I)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mBuffering:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    return-object p0
.end method

.method static synthetic access$1400(J)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getTimeString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/support/v7/app/MediaRouteButton;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsNetworkDisconnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsNetworkDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->initialiseVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/model/Dvr;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;Lcom/tikilive/ui/model/Dvr;)Lcom/tikilive/ui/model/Dvr;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/model/DvrProvider;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->onDvrItemAvailable()V

    return-void
.end method

.method static synthetic access$700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->redirectDvrLibrary()V

    return-void
.end method

.method static synthetic access$800(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mExoDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mExoDisplayedDuration:Landroid/widget/TextView;

    return-object p0
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

    .line 744
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 745
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v4, p0, v2

    .line 747
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p0

    .line 748
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v6, v4, v2

    .line 750
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 751
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

    .line 754
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

    .line 756
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
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dvr_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Dvr;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    .line 313
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dvr_item_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 316
    invoke-static {p0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    new-instance v3, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$4;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$4;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tikilive/ui/backend/Api;->getDvr(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->redirectDvrLibrary()V

    goto :goto_0

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->onDvrItemAvailable()V

    :goto_0
    return-void
.end method

.method private onDvrItemAvailable()V
    .locals 13

    .line 355
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr$Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr$Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 366
    iput-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 370
    :cond_2
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/helper/History;->setHistoryDvrLibraryPlayer(I)V

    .line 373
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const v0, 0x7f1201af

    .line 376
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_4
    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemChannel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getChannel()Lcom/tikilive/ui/model/Dvr$Channel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr$Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 382
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v3

    iget-object v6, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v6}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v6

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long v6, v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 383
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDate:Landroid/widget/TextView;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "c L/d"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDate:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    sget-object v3, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    iget-object v7, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v7}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v7

    aget v3, v3, v7

    const/16 v7, 0x8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemTimeDuration:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr$Video;->getDurationFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 406
    :pswitch_1
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDate:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemTimeDuration:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "hh:mm a"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v8, "hh:mm a"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 415
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v3

    int-to-long v7, v3

    mul-long v7, v7, v4

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 416
    new-instance v3, Ljava/util/Date;

    iget-object v7, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v7}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v7

    iget-object v8, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v7, v7

    mul-long v7, v7, v4

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 417
    iget-object v4, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v11, v7, v9

    const-wide/16 v7, 0x64

    mul-long v11, v11, v7

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v9, v7, v2

    div-long/2addr v11, v9

    long-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 418
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemTimeDuration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "hh:mm a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm a"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemTimeDuration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "hh:mm a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm a"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getDvrItemMediaInfo(Lcom/tikilive/ui/model/Dvr;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    .line 432
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 433
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v3, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$5;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$5;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    invoke-direct {v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 442
    new-instance v3, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;

    invoke-direct {v3, v2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 443
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 446
    new-instance v3, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 449
    new-instance v5, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 454
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v4, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 457
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v4, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;

    invoke-direct {v4, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    const v3, 0x7f120028

    .line 554
    invoke-virtual {p0, v3}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v5, v3, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v4, p0, v2, v5}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 557
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSelectedDvrItem:Lcom/tikilive/ui/model/Dvr;

    .line 560
    invoke-virtual {v3}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Dvr$Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$7;

    invoke-direct {v4, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$7;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    .line 559
    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    .line 624
    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 628
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 630
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 632
    :catch_0
    iput-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    goto :goto_1

    .line 635
    :cond_5
    iput-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 638
    :goto_1
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 640
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addMediaRouterButton(Landroid/support/v7/app/MediaRouteButton;)V

    .line 642
    new-instance v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$8;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    .line 678
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 680
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isAnyRouteAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 684
    :try_start_1
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteMediaLoaded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 686
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_7

    .line 688
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v2, "starting cast - connected, but getRemoteMediaInformation() returned null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V

    goto :goto_4

    .line 692
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 693
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v2, "starting cast - connected, but remote media is different than current media"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V

    goto :goto_4

    .line 697
    :cond_8
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v2, "not starting cast - current media is already loaded on the remote player"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 701
    :cond_9
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v2, "starting cast - connected, but no remote media is loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startVideoCastControllerActivity(Landroid/content/Context;Lcom/google/android/gms/cast/MediaInfo;IZ)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 708
    sget-object v2, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, "NoConnectionException thrown when trying to get remote media information"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    .line 706
    sget-object v2, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, "TransientNetworkDisconnectionException thrown when trying to get remote media information"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_b

    .line 714
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_b
    return-void

    .line 360
    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->redirectDvrLibrary()V

    return-void

    :cond_d
    :goto_6
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

.method private redirectDvrLibrary()V
    .locals 2

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 720
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 721
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerAudioNoisyReceiver()V
    .locals 3

    .line 761
    iget-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private unregisterAudioNoisyReceiver()V
    .locals 2

    .line 768
    iget-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 148
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->setContentView(I)V

    const p1, 0x7f0a00ec

    .line 151
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mControllerCoordinator:Landroid/support/design/widget/CoordinatorLayout;

    const p1, 0x7f0a005b

    .line 152
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mBuffering:Landroid/widget/ProgressBar;

    const p1, 0x7f0a02b4

    .line 153
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const p1, 0x7f0a02a8

    .line 154
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoName:Landroid/widget/TextView;

    const p1, 0x7f0a02a3

    .line 155
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoDescription:Landroid/widget/TextView;

    const p1, 0x7f0a00ef

    .line 156
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mExoDuration:Landroid/widget/TextView;

    const p1, 0x7f0a00ee

    .line 157
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mExoDisplayedDuration:Landroid/widget/TextView;

    const p1, 0x7f0a02a4

    .line 158
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoDetails:Landroid/view/ViewStub;

    .line 159
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoDetails:Landroid/view/ViewStub;

    const v0, 0x7f0d0044

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 160
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoDetails:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p1, 0x7f0a0280

    .line 161
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemChannel:Landroid/widget/TextView;

    const p1, 0x7f0a0282

    .line 162
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDate:Landroid/widget/TextView;

    const p1, 0x7f0a028b

    .line 163
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemTimeDuration:Landroid/widget/TextView;

    const p1, 0x7f0a0284

    .line 164
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter1:Landroid/widget/TextView;

    const p1, 0x7f0a0285

    .line 165
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemDelimiter2:Landroid/widget/TextView;

    const p1, 0x7f0a028a

    .line 166
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mDvrItemProgress:Landroid/widget/ProgressBar;

    .line 169
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsCastEnabled:Z

    const p1, 0x7f0a01b8

    .line 170
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteButton;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    .line 173
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 176
    new-instance p1, Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-direct {p1, p0, p0}, Lcom/tikilive/ui/helper/AudioFocusHelper;-><init>(Landroid/content/Context;Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;)V

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    .line 179
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->registerAudioNoisyReceiver()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 289
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 300
    :sswitch_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 301
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    .line 297
    :sswitch_1
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 304
    :sswitch_2
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    .line 308
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 255
    iput-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iput-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsNetworkDisconnected:Z

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsCastEnabled:Z

    if-eqz v0, :cond_2

    .line 266
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->decrementUiCounter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 184
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->initialiseVideo()V

    .line 188
    new-instance v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;-><init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    iget-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mIsCastEnabled:Z

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->incrementUiCounter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 280
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onStop()V

    .line 282
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->unregisterAudioNoisyReceiver()V

    .line 284
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->shouldPlayOnAudioFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    .line 803
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 805
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method
