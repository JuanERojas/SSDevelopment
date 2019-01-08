.class public abstract Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;


# static fields
.field private static final AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "ChannelPlayerBaseFragment"

.field private static final TAG_ADAPTIVE_MEDIA_SOURCE:Ljava/lang/String; = "AdaptiveMediaSource"


# instance fields
.field private mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

.field private final mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioNoisyReceiverRegistered:Z

.field private mBuffering:Landroid/widget/ProgressBar;

.field protected mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

.field protected mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

.field private mChannelChangerTimer:Ljava/util/Timer;

.field protected mChannelNumberRequestedListener:Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;

.field protected mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

.field private mIsPlayerPaused:Z

.field private mIsPlayerTimeout:Z

.field private mPlaybackError:Landroid/widget/TextView;

.field private mPlaybackTimer:Lcom/tikilive/ui/notify/PlaybackTimer;

.field private mPlayerPausedContainer:Landroid/view/ViewGroup;

.field private mPlayerPausedHandler:Landroid/os/Handler;

.field private mPlayerPausedOption:Landroid/widget/Button;

.field private mPlayerPausedRunnable:Ljava/lang/Runnable;

.field private mPlayerTimeoutContainer:Landroid/view/ViewGroup;

.field private mPlayerTimeoutHandler:Landroid/os/Handler;

.field private mPlayerTimeoutOption:Landroid/widget/Button;

.field private mPlayerTimeoutRunnable:Ljava/lang/Runnable;

.field private mPreviewStreamHandler:Landroid/os/Handler;

.field private mPreviewStreamRunnable:Ljava/lang/Runnable;

.field protected mRadioPlayer:Landroid/widget/ImageView;

.field protected mRequestedChannel:Landroid/widget/TextView;

.field private mRequiredMembershipHandler:Landroid/os/Handler;

.field private mRequiredMembershipRunnable:Ljava/lang/Runnable;

.field private mShouldPlayerTimeout:Z

.field protected mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

.field private mVideoPlaybackErrorHandler:Landroid/os/Handler;

.field private mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mShouldPlayerTimeout:Z

    .line 103
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerTimeout:Z

    .line 104
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerPaused:Z

    .line 113
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiverRegistered:Z

    .line 114
    new-instance v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$1;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doOnCurrentEvent(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannelByRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doChannelChange(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Lcom/tikilive/ui/model/ChannelProvider;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;I)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mBuffering:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mShouldPlayerTimeout:Z

    return p0
.end method

.method static synthetic access$602(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mShouldPlayerTimeout:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Lcom/tikilive/ui/helper/AudioFocusHelper;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelChannelChangerTimer()V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChangerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChangerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 983
    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChangerTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private cancelPlayerTimeout()V
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private changeChannelByRequest()V
    .locals 4

    .line 992
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->cancelChannelChangerTimer()V

    .line 995
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/ChannelChanger;->getRequestedChannelNumber()I

    move-result v0

    .line 996
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelNumberRequestedListener:Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelNumberRequestedListener:Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;

    invoke-interface {v1, v0}, Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;->onChannelNumberRequested(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1010
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$14;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$14;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1021
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/ChannelChanger;->reset()V

    return-void
.end method

.method private doChannelChange(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doOnCurrentEvent(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doOnCurrentEvent(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    const-string v3, "Api:getCurrentEvent"

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 519
    new-instance v2, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/tikilive/ui/backend/Api;->loadCurrentEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V

    :goto_0
    return-void
.end method

.method private doOnCurrentEvent(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    if-nez v1, :cond_2

    .line 538
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 539
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->isPpv()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->hasTicket()Z

    move-result v1

    if-nez v1, :cond_2

    .line 541
    sget-object v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "Trying to access a PPV event without a valid ticket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 544
    invoke-interface {p1}, Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;->onLoaded()V

    :cond_1
    return-void

    .line 551
    :cond_2
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isLive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 552
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 554
    invoke-interface {p1}, Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;->onLoaded()V

    :cond_3
    return-void

    .line 559
    :cond_4
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 561
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 563
    invoke-interface {p1}, Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;->onLoaded()V

    :cond_5
    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 569
    invoke-interface {p1}, Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;->onLoaded()V

    :cond_7
    const/4 p1, 0x0

    .line 572
    invoke-virtual {p0, v0, v1, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->playChannelStream(Lcom/tikilive/ui/model/Channel;Ljava/lang/String;Z)V

    .line 574
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_8

    .line 575
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    goto :goto_0

    .line 577
    :cond_8
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 578
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRadioPlayer:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    .line 582
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    :cond_9
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRequiredMembership()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 585
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    .line 588
    :cond_a
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/application/MyApplication;

    .line 589
    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->getExpiredRequiredMembershipTimeouts()Ljava/util/ArrayList;

    move-result-object p1

    .line 590
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 591
    sget-object p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "Showing required membership prompt, as the timeout expired"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getRequiredMembershipTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getRequiredMembershipInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showRequiredMembershipScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 594
    :cond_b
    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$9;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    .line 602
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getRequiredMembershipTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_c
    :goto_1
    return-void

    :cond_d
    :goto_2
    return-void

    :cond_e
    :goto_3
    return-void
.end method

.method private getCurrentChannel()Lcom/tikilive/ui/model/Channel;
    .locals 1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

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

    .line 1106
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 1107
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v4, p0, v2

    .line 1109
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p0

    .line 1110
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v6, v4, v2

    .line 1112
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 1113
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

    .line 1116
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

    .line 1118
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

.method private isPreviousUri(Ljava/lang/String;)Z
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getPreviousPlaybackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tikilive/ui/helper/Utils;->isPreviousUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private registerAudioNoisyReceiver()V
    .locals 3

    .line 1210
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->AUDIO_NOISY_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/channel/ChannelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1212
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private setChannelChangerTimer()V
    .locals 4

    .line 965
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->cancelChannelChangerTimer()V

    .line 967
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChangerTimer:Ljava/util/Timer;

    .line 968
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChangerTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private unregisterAudioNoisyReceiver()V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1219
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public changeChannel()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method public changeChannel(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->hideErrorLayoutElements()V

    .line 274
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    :cond_3
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getCurrentChannel()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorCounter()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->isPreviousUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doChannelChange(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    return-void

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    const-string v3, "Api:getChannel"

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v1}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    const-string v3, "Api:getRadioChannel"

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 302
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$4;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$5;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$5;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    .line 301
    invoke-virtual {v1, v2, v3, p1}, Lcom/tikilive/ui/backend/Api;->getRadioChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    .line 362
    :cond_6
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/backend/Api;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$7;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    .line 361
    invoke-virtual {v1, v2, v3, p1}, Lcom/tikilive/ui/backend/Api;->getChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public handleDigit(I)V
    .locals 3

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/helper/ChannelChanger;->handle(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequestedChannel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/ChannelChanger;->getRequestedChannelNumberFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequestedChannel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/ChannelChanger;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannelByRequest()V

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setChannelChangerTimer()V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 950
    sget-object v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handlePlayerPaused()V
    .locals 3

    const/4 v0, 0x0

    .line 1184
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerTimeout:Z

    .line 1185
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x1

    .line 1187
    iput-boolean v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerPaused:Z

    .line 1188
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1189
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedOption:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 1191
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v1}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1195
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method protected handlePlayerTimeout()V
    .locals 4

    const/4 v0, 0x1

    .line 1166
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerTimeout:Z

    .line 1167
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutOption:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1169
    new-instance v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$16;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$16;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedRunnable:Ljava/lang/Runnable;

    .line 1175
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hideChannelChanger()V
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequestedChannel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected hideErrorLayoutElements()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1226
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    new-instance p1, Lcom/tikilive/ui/helper/ChannelChanger;

    invoke-direct {p1}, Lcom/tikilive/ui/helper/ChannelChanger;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelChanger:Lcom/tikilive/ui/helper/ChannelChanger;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 135
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    instance-of v0, p1, Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_0

    .line 141
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/channel/ChannelActivity;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackTimer:Lcom/tikilive/ui/notify/PlaybackTimer;

    .line 147
    new-instance p1, Lcom/tikilive/ui/helper/AudioFocusHelper;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v0, p0}, Lcom/tikilive/ui/helper/AudioFocusHelper;-><init>(Landroid/content/Context;Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;)V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    .line 150
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->registerAudioNoisyReceiver()V

    return-void

    .line 137
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement SimpleExoPlayerControl"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDetach()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 157
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->cancelMediaSourceEventListeners()V

    .line 159
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->unregisterAudioNoisyReceiver()V

    .line 161
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 0

    const-string p1, "AdaptiveMediaSource"

    const/4 p2, 0x3

    .line 1079
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string p2, "onDownstreamFormatChanged"

    .line 1080
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 5

    move-object v0, p1

    const-string v1, "AdaptiveMediaSource"

    const/4 v2, 0x3

    .line 1050
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p7, v1

    if-eqz v4, :cond_1

    const-string v1, "AdaptiveMediaSource"

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadCanceled for interval "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7, p8}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p9, p10}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string v0, "unknown uri"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v1, "AdaptiveMediaSource"

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadCanceled ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    const-string v0, "unknown uri"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p15

    const-string v4, "AdaptiveMediaSource"

    const/4 v5, 0x3

    .line 1039
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p7, v4

    if-eqz v7, :cond_0

    const-string v4, "AdaptiveMediaSource"

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLoadCompleted for interval "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p8}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p10}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": loaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v6, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p13 .. p14}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seconds ==> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v4, "AdaptiveMediaSource"

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadCompleted: loaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v6, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p13 .. p14}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seconds ==> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v1, "unknown uri"

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 5

    move-object v0, p1

    const-string v1, "AdaptiveMediaSource"

    const/4 v2, 0x3

    .line 1061
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p7, v1

    if-eqz v4, :cond_1

    const-string v1, "AdaptiveMediaSource"

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adaptive media source onLoadError for interval "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7, p8}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p9, p10}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string v0, "unknown uri"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v1, "AdaptiveMediaSource"

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adaptive media source onLoadError ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    const-string v0, "unknown uri"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0

    const-string p2, "AdaptiveMediaSource"

    const/4 p3, 0x3

    .line 1028
    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p7, p2

    if-eqz p4, :cond_1

    const-string p2, "AdaptiveMediaSource"

    .line 1030
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLoadStarted for interval "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7, p8}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p9, p10}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getTimeString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ==> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string p1, "unknown uri"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string p2, "AdaptiveMediaSource"

    .line 1032
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLoadStarted ==> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    const-string p1, "unknown uri"

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 224
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    const-string v2, "Api:getChannel"

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    const-string v2, "Api:getRadioChannel"

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "Api:getCurrentEvent"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->cancelMediaSourceEventListeners()V

    .line 232
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackTimer:Lcom/tikilive/ui/notify/PlaybackTimer;

    invoke-virtual {v0}, Lcom/tikilive/ui/notify/PlaybackTimer;->stop()V

    .line 233
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequiredMembershipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mVideoPlaybackErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 213
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->cancelMediaSourceEventListeners()V

    .line 214
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0, p0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->setMediaSourceEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 216
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 219
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel()V

    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0

    const-string p1, "AdaptiveMediaSource"

    const/4 p2, 0x3

    .line 1072
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string p2, "onUpstreamDiscarded"

    .line 1073
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const p2, 0x7f0a007a

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 168
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    const p2, 0x7f0a0242

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRadioPlayer:Landroid/widget/ImageView;

    const p2, 0x7f0a005b

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mBuffering:Landroid/widget/ProgressBar;

    const p2, 0x7f0a0218

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackError:Landroid/widget/TextView;

    const p2, 0x7f0a0259

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequestedChannel:Landroid/widget/TextView;

    .line 175
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const-string v1, "DictionaryPreferences"

    invoke-virtual {p2, v1, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const v0, 0x7f0a021f

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0220

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "player_timeout_message"

    const v2, 0x7f1201d3

    .line 179
    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0221

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutOption:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutOption:Landroid/widget/Button;

    const-string v1, "player_timeout_option"

    const v2, 0x7f1201d4

    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutOption:Landroid/widget/Button;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$2;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021c

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a021d

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "player_paused_message"

    const v2, 0x7f1201d1

    .line 191
    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a021e

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedOption:Landroid/widget/Button;

    .line 193
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedOption:Landroid/widget/Button;

    const-string v0, "player_paused_option"

    const v1, 0x7f1201d2

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedOption:Landroid/widget/Button;

    new-instance p2, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$3;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$3;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->shouldPlayOnAudioFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1252
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->requestAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1236
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected playChannelStream(Lcom/tikilive/ui/model/Channel;Ljava/lang/String;Z)V
    .locals 8

    .line 612
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 618
    sget-object v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading preview HLS stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_1
    sget-object v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing channel to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mShouldPlayerTimeout:Z

    .line 624
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setupPlayerTimeout()Z

    .line 626
    invoke-direct {p0, p2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->isPreviousUri(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 872
    :cond_2
    sget-object p2, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Requested URL is the same with the previous playback URL, nothing to do ..."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3

    .line 875
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackTimer:Lcom/tikilive/ui/notify/PlaybackTimer;

    invoke-virtual {p2}, Lcom/tikilive/ui/notify/PlaybackTimer;->start()V

    .line 878
    :cond_3
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p1

    if-nez p1, :cond_7

    if-nez p3, :cond_7

    .line 879
    iput-boolean v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mShouldPlayerTimeout:Z

    .line 880
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setupPlayerTimeout()Z

    goto :goto_3

    .line 628
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mBuffering:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 630
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 631
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0, p2}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->playRadioStream(Ljava/lang/String;)V

    goto :goto_2

    .line 633
    :cond_5
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorCounter()I

    move-result v3

    if-gtz v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-interface {v1, p2, v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->playLiveStream(Ljava/lang/String;Z)V

    .line 636
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    new-instance v7, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;ZLcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->setExoPlayerEventListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected playPreviewStream(Ljava/lang/String;)V
    .locals 4

    .line 886
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isFreePreview()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getFreePreviewTimeout()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/application/MyApplication;

    .line 894
    invoke-virtual {v1}, Lcom/tikilive/ui/application/MyApplication;->getExpiredPreviewChannels()Ljava/util/ArrayList;

    move-result-object v1

    .line 896
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    sget-object p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Skipping preview stream playback because it already played this session"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->stopPlayback()V

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 902
    invoke-virtual {p0, v0, p1, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->playChannelStream(Lcom/tikilive/ui/model/Channel;Ljava/lang/String;Z)V

    .line 904
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 906
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 907
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    :cond_2
    new-instance p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;

    invoke-direct {p1, p0, v0, v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$11;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    .line 918
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPreviewStreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getFreePreviewTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 889
    :cond_3
    :goto_0
    sget-object p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "Skipping preview stream playback because it was disabled from admin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected resetPlayerPaused()V
    .locals 2

    const/4 v0, 0x0

    .line 1199
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerPaused:Z

    .line 1200
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerPausedContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1205
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method protected resetPlayerTimeout()V
    .locals 2

    const/4 v0, 0x0

    .line 1179
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerTimeout:Z

    .line 1180
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1274
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setupPlayerTimeout()Z
    .locals 5

    .line 1126
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerTimeout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1128
    :goto_1
    iget-boolean v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerTimeout:Z

    if-eqz v2, :cond_2

    .line 1129
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->resetPlayerTimeout()V

    goto :goto_2

    .line 1130
    :cond_2
    iget-boolean v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mIsPlayerPaused:Z

    if-eqz v2, :cond_3

    .line 1131
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->resetPlayerPaused()V

    .line 1134
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->cancelPlayerTimeout()V

    .line 1136
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v2}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v2}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    .line 1140
    :cond_4
    iget-boolean v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mShouldPlayerTimeout:Z

    if-eqz v1, :cond_5

    .line 1141
    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$15;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$15;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    iput-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutRunnable:Ljava/lang/Runnable;

    .line 1147
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlayerTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/channel/ChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {v3}, Lcom/tikilive/ui/application/MyApplication;->getPlayerTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return v0

    :cond_6
    :goto_3
    return v1
.end method

.method protected showErrorScreen(Ljava/lang/String;)V
    .locals 2

    .line 934
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->stopPlayback()V

    .line 936
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackTimer:Lcom/tikilive/ui/notify/PlaybackTimer;

    invoke-virtual {v0}, Lcom/tikilive/ui/notify/PlaybackTimer;->stop()V

    .line 938
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mBuffering:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRadioPlayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mPlaybackError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected showRequiredMembershipScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 608
    sget-object p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->TAG:Ljava/lang/String;

    const-string p2, "Required membership screen should be overridden in child classes"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected showSubscriptionErrorScreen(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 504
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, p3}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->playPreviewStream(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mAudioFocusHelper:Lcom/tikilive/ui/helper/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    const v0, 0x7f12002b

    .line 1264
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected stopPlayback()V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 930
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    return-void
.end method

.method protected updateSubtitleButton()V
    .locals 0

    return-void
.end method
