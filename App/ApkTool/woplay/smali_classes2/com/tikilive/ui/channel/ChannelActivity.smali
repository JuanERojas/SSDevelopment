.class public Lcom/tikilive/ui/channel/ChannelActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "ChannelActivity.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnChannelSelectedListener;
.implements Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;
.implements Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;
.implements Lcom/tikilive/ui/channel/SimpleExoPlayerControl;
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final EXTRA_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field public static final EXTRA_CHANNEL_TYPE_OTT:I = 0x101

.field public static final EXTRA_CHANNEL_TYPE_SOCIAL_BROADCASTS:I = 0x102

.field public static final INITIAL_FRAGMENT:Ljava/lang/String; = "INITIAL_FRAGMENT"

.field public static final INITIAL_FRAGMENT_CHANNEL_GUIDE:I = 0x102

.field public static final INITIAL_FRAGMENT_CHANNEL_LIST:I = 0x101

.field public static final INITIAL_FRAGMENT_CHANNEL_PLAYER:I = 0x103

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.channel.ChannelActivity"


# instance fields
.field private extraChannelId:I

.field private initialFragment:I

.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mBandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private mChangeChannelAllowed:Z

.field private mChangeChannelTimer:Ljava/util/Timer;

.field private mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

.field private final mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

.field private mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

.field private mExoPlayerEventListenerProxy:Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;

.field private mIsCastEnabled:Z

.field private mIsNetworkDisconnected:Z

.field private mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private mMediaSourceEventListenerProxy:Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

.field mOttChannelsLoading:Z

.field private mPreviousPlaybackUrl:Ljava/lang/String;

.field mRadioChannelsLoading:Z

.field private mRootView:Landroid/view/View;

.field private mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field mSocialBroadcasts:Z

.field mSocialBroadcastsLoading:Z

.field private mVideoPlaybackErrorCounter:I

.field private mVideoPlaybackErrorDelay:I

.field private textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    .line 92
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelAllowed:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mOttChannelsLoading:Z

    .line 108
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcastsLoading:Z

    .line 109
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mRadioChannelsLoading:Z

    .line 119
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorCounter:I

    .line 120
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorDelay:I

    .line 122
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsNetworkDisconnected:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/tikilive/ui/channel/ChannelActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/channel/ChannelActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->launchRequestedFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/channel/ChannelActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsNetworkDisconnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/channel/ChannelActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsNetworkDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/channel/ChannelActivity;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorCounter:I

    return p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/channel/ChannelActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->restartPlayback()V

    return-void
.end method

.method static synthetic access$500(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/channel/ChannelFullscreenFragment;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    return-object p0
.end method

.method static synthetic access$602(Lcom/tikilive/ui/channel/ChannelActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelAllowed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tikilive/ui/channel/ChannelActivity;)Lcom/tikilive/ui/model/ChannelProvider;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/channel/ChannelActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelActivity;->getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V

    return-void
.end method

.method private changeChannel(Lcom/tikilive/ui/model/Channel;)V
    .locals 3

    .line 707
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelAllowed:Z

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/TextTracksHelper;->disableTextTracks()V

    .line 711
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryChannelId(I)V

    .line 712
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;

    .line 713
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo(Z)V

    const/4 p1, 0x0

    .line 715
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelAllowed:Z

    .line 717
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 718
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    const/4 p1, 0x0

    .line 719
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelTimer:Ljava/util/Timer;

    .line 722
    :cond_0
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelTimer:Ljava/util/Timer;

    .line 723
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelTimer:Ljava/util/Timer;

    new-instance v0, Lcom/tikilive/ui/channel/ChannelActivity$4;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelActivity$4;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method

.method private getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    if-nez v0, :cond_0

    .line 734
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setTitle(Ljava/lang/String;)V

    .line 737
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 739
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    return-object p1
.end method

.method private launchRequestedFragment()V
    .locals 4

    .line 995
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 997
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1201ba

    .line 998
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1201b8

    .line 1000
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    .line 1002
    invoke-direct {p0, v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object v0

    .line 1006
    invoke-direct {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 1007
    invoke-virtual {v0}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void

    .line 1011
    :cond_1
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->getHistoryChannelId()I

    move-result v0

    if-lez v0, :cond_2

    .line 1014
    :try_start_0
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrentById(I)Lcom/tikilive/ui/model/Channel;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1016
    :catch_0
    sget-object v1, Lcom/tikilive/ui/channel/ChannelActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set previously stored channel ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", defaulting to first channel"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_2
    :goto_1
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->initialFragment:I

    const v1, 0x7f0a008e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1042
    :pswitch_0
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    if-lez v0, :cond_3

    .line 1044
    :try_start_1
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrentById(I)Lcom/tikilive/ui/model/Channel;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1046
    :catch_1
    sget-object v0, Lcom/tikilive/ui/channel/ChannelActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set initial channel ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaulting to first channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_3
    :goto_2
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 1052
    invoke-virtual {p0, v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->onChannelSelected(Lcom/tikilive/ui/model/Channel;Z)V

    goto :goto_4

    .line 1029
    :pswitch_1
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    if-lez v0, :cond_4

    .line 1031
    :try_start_2
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    iget v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrentById(I)Lcom/tikilive/ui/model/Channel;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1033
    :catch_2
    sget-object v0, Lcom/tikilive/ui/channel/ChannelActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set initial channel ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", defaulting to first channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->newInstance(Z)Lcom/tikilive/ui/channel/ChannelGuideFragment;

    move-result-object v0

    .line 1037
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "channel_guide_fragment"

    .line 1038
    invoke-virtual {v2, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1039
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_4

    .line 1023
    :pswitch_2
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->newInstance(Z)Lcom/tikilive/ui/channel/ChannelListFragment;

    move-result-object v0

    .line 1024
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1025
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1026
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadChannels(Z)V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->clear()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 755
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcastsLoading:Z

    goto :goto_0

    .line 757
    :cond_0
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mOttChannelsLoading:Z

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity$5;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;Z)V

    new-instance v2, Lcom/tikilive/ui/channel/ChannelActivity$6;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/channel/ChannelActivity$6;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tikilive/ui/backend/Api;->getChannels(ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loadRadioChannels()V
    .locals 3

    const/4 v0, 0x1

    .line 897
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mRadioChannelsLoading:Z

    .line 899
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setMessage(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelActivity$7;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelActivity$7;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;)V

    new-instance v2, Lcom/tikilive/ui/channel/ChannelActivity$8;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/channel/ChannelActivity$8;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getRadioChannels(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private releasePlayer()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_0
    return-void
.end method

.method private restartPlayback()V
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "channel_playback_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->changeChannel()V

    goto :goto_0

    .line 1071
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "channel_guide_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;

    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->changeChannel()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupPlayer()V
    .locals 6

    .line 665
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->releasePlayer()V

    .line 668
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMainHandler:Landroid/os/Handler;

    .line 669
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mBandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 670
    new-instance v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mBandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 671
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 674
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 677
    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const v0, 0x7f120028

    .line 680
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mBandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v5, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mBandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v4, v0, v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 684
    new-instance v0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;-><init>(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mExoPlayerEventListenerProxy:Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;

    .line 685
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mExoPlayerEventListenerProxy:Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 688
    new-instance v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

    invoke-direct {v0, v2}, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaSourceEventListenerProxy:Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

    .line 691
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 694
    new-instance v0, Lcom/tikilive/ui/helper/TextTracksHelper;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mBandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v2, v1, v3}, Lcom/tikilive/ui/helper/TextTracksHelper;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    return-void
.end method

.method private showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 3

    .line 743
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 745
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 746
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 747
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method


# virtual methods
.method public cancelMediaSourceEventListeners()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaSourceEventListenerProxy:Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->setEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method public getPreviousPlaybackUrl()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mPreviousPlaybackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getTextTracksHelper()Lcom/tikilive/ui/helper/TextTracksHelper;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    return-object v0
.end method

.method public getVideoPlaybackErrorCounter()I
    .locals 1

    .line 1083
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorCounter:I

    return v0
.end method

.method public getVideoPlaybackErrorDelay()I
    .locals 1

    .line 1095
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorDelay:I

    return v0
.end method

.method public incrementVideoPlaybackErrorCounter()V
    .locals 1

    .line 1091
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorCounter:I

    return-void
.end method

.method public incrementVideoPlaybackErrorDelay()V
    .locals 4

    .line 1103
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorDelay:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorDelay:I

    return-void
.end method

.method public isNetworkDisconnected()Z
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsNetworkDisconnected:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 641
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "channel_guide_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->closePopup()Z

    move-result v0

    if-nez v0, :cond_3

    .line 644
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "channel_playback_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->closePickSubstitles()V

    goto :goto_0

    .line 652
    :cond_1
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 655
    :cond_2
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 659
    sget-object v1, Lcom/tikilive/ui/channel/ChannelActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 3

    const-string v0, "HLS-Adaptive-Streaming"

    const/4 v1, 0x3

    .line 1060
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HLS-Adaptive-Streaming"

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBandwidthSample: elapsedMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bytes = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", bitrate: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onChannelGuideRequested()V
    .locals 4

    .line 336
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "channel_guide_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x103

    .line 339
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->initialFragment:I

    .line 340
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v0

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    .line 345
    :cond_1
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->newInstance(Z)Lcom/tikilive/ui/channel/ChannelGuideFragment;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    const-string v3, "channel_guide_fragment"

    .line 347
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 348
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 349
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void
.end method

.method public onChannelNumberRequested(I)V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->getByNumber(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v0

    const-wide/16 v1, 0x15e

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/tikilive/ui/channel/ChannelActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity$2;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/model/Channel;)V

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/tikilive/ui/channel/ChannelActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity$3;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/model/Channel;)V

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 387
    :cond_1
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryChannelId(I)V

    .line 388
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;

    .line 389
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->changeChannel()V

    return-void
.end method

.method public onChannelSelected(Lcom/tikilive/ui/model/Channel;)V
    .locals 1

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, p1, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->onChannelSelected(Lcom/tikilive/ui/model/Channel;Z)V

    return-void
.end method

.method public onChannelSelected(Lcom/tikilive/ui/model/Channel;Z)V
    .locals 3

    .line 302
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {p0, p1}, Lcom/tikilive/ui/helper/Utils;->launchTvEverywhereChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    return-void

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-static {p0, p1}, Lcom/tikilive/ui/helper/Utils;->launchSlingChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    return-void

    .line 316
    :cond_2
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryChannelId(I)V

    .line 317
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->setCurrent(Lcom/tikilive/ui/model/Channel;)Lcom/tikilive/ui/model/Channel;

    .line 319
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mPreviousPlaybackUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/helper/Utils;->isPreviousUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    :cond_3
    const/16 v0, 0x103

    .line 323
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->initialFragment:I

    .line 324
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    .line 326
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a008e

    .line 327
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    const-string v2, "channel_playback_fragment"

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p2, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 329
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 331
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsCastEnabled:Z

    const p1, 0x7f0d0022

    .line 140
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0a008e

    .line 145
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mRootView:Landroid/view/View;

    .line 147
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 149
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    .line 150
    new-instance v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    .line 152
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 156
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x101

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->initialFragment:I

    .line 157
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "channel_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    .line 158
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "channel_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x1

    .line 159
    :cond_1
    iput-boolean v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    .line 488
    sget-object v0, Lcom/tikilive/ui/channel/ChannelActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xac

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 494
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "channel_guide_fragment"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 495
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    const/16 p2, 0x102

    .line 496
    iput p2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->initialFragment:I

    .line 497
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 499
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->extraChannelId:I

    .line 501
    :cond_2
    iget-boolean p2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->newInstance(Z)Lcom/tikilive/ui/channel/ChannelGuideFragment;

    move-result-object p2

    .line 502
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0a008e

    const-string v3, "channel_guide_fragment"

    .line 503
    invoke-virtual {v0, v2, p2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 504
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    if-eqz p1, :cond_4

    .line 506
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 507
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->onChannelSelected(Lcom/tikilive/ui/model/Channel;)V

    :cond_4
    return v1

    .line 514
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "channel_playback_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/16 v10, 0x9

    if-eqz v0, :cond_c

    .line 515
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 516
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->setupPlayerTimeout()Z

    move-result v11

    if-eqz v11, :cond_6

    return v1

    :cond_6
    const/16 v11, 0x17

    if-eq p1, v11, :cond_b

    const/16 v11, 0x53

    if-eq p1, v11, :cond_b

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_3

    .line 544
    :pswitch_0
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 545
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->previous()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 547
    invoke-static {p0, p1}, Lcom/tikilive/ui/helper/Utils;->launchTvEverywhereChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_1

    .line 548
    :cond_7
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 549
    invoke-static {p0, p1}, Lcom/tikilive/ui/helper/Utils;->launchSlingChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_1

    .line 551
    :cond_8
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->changeChannel(Lcom/tikilive/ui/model/Channel;)V

    :goto_1
    return v1

    .line 529
    :pswitch_1
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 530
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->next()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 532
    invoke-static {p0, p1}, Lcom/tikilive/ui/helper/Utils;->launchTvEverywhereChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_2

    .line 533
    :cond_9
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 534
    invoke-static {p0, p1}, Lcom/tikilive/ui/helper/Utils;->launchSlingChannel(Landroid/content/Context;Lcom/tikilive/ui/model/Channel;)V

    goto :goto_2

    .line 536
    :cond_a
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->changeChannel(Lcom/tikilive/ui/model/Channel;)V

    :goto_2
    return v1

    .line 584
    :pswitch_2
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v10}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 581
    :pswitch_3
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v9}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 578
    :pswitch_4
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v8}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 575
    :pswitch_5
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v7}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 572
    :pswitch_6
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v6}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 569
    :pswitch_7
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v5}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 566
    :pswitch_8
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v4}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 563
    :pswitch_9
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v3}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 560
    :pswitch_a
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 557
    :pswitch_b
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1, v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->handleDigit(I)V

    return v1

    .line 524
    :cond_b
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo()V

    return v1

    .line 589
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v11, "channel_guide_fragment"

    invoke-virtual {v0, v11}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;

    if-eqz v0, :cond_e

    .line 590
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 591
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->setupPlayerTimeout()Z

    move-result v11

    if-eqz v11, :cond_d

    return v1

    :cond_d
    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    goto :goto_4

    .line 600
    :pswitch_c
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveChannelPageDown()V

    return v1

    .line 597
    :pswitch_d
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveChannelPageUp()V

    return v1

    .line 630
    :pswitch_e
    invoke-virtual {v0, v10}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 627
    :pswitch_f
    invoke-virtual {v0, v9}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 624
    :pswitch_10
    invoke-virtual {v0, v8}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 621
    :pswitch_11
    invoke-virtual {v0, v7}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 618
    :pswitch_12
    invoke-virtual {v0, v6}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 615
    :pswitch_13
    invoke-virtual {v0, v5}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 612
    :pswitch_14
    invoke-virtual {v0, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 609
    :pswitch_15
    invoke-virtual {v0, v3}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 606
    :pswitch_16
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 603
    :pswitch_17
    invoke-virtual {v0, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->handleDigit(I)V

    return v1

    .line 635
    :cond_e
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5c
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChangeChannelAllowed:Z

    .line 467
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "channel_playback_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 476
    :sswitch_0
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelFullscreenFragment:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->changeChannel()V

    .line 483
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/activity/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 262
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->releasePlayer()V

    .line 264
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsNetworkDisconnected:Z

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsCastEnabled:Z

    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->decrementUiCounter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 168
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->setupPlayer()V

    .line 172
    new-instance v0, Lcom/tikilive/ui/channel/ChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelActivity$1;-><init>(Lcom/tikilive/ui/channel/ChannelActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mIsCastEnabled:Z

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->incrementUiCounter()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 248
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/ChannelProvider;->isSocialBroadcasts()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->launchRequestedFragment()V

    goto :goto_0

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    invoke-direct {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->loadChannels(Z)V

    goto :goto_0

    .line 254
    :cond_2
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcasts:Z

    invoke-direct {p0, v0}, Lcom/tikilive/ui/channel/ChannelActivity;->loadChannels(Z)V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 282
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onStop()V

    .line 283
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mOttChannelsLoading:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getOTTChannels"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSocialBroadcastsLoading:Z

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getSocialBroadcasts"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 289
    :cond_1
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mRadioChannelsLoading:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getRadioChannels"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public playLiveStream(Ljava/lang/String;Z)V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mPreviousPlaybackUrl:Ljava/lang/String;

    .line 416
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 419
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaSourceEventListenerProxy:Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

    .line 418
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    .line 424
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public playRadioStream(Ljava/lang/String;)V
    .locals 3

    .line 430
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mPreviousPlaybackUrl:Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 439
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaSourceEventListenerProxy:Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

    .line 438
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    .line 444
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mSimpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setExoPlayerEventListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mExoPlayerEventListenerProxy:Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->setEventListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public setMediaSourceEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mMediaSourceEventListenerProxy:Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->setEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method public setVideoPlaybackErrorCounter(I)V
    .locals 0

    .line 1087
    iput p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorCounter:I

    return-void
.end method

.method public setVideoPlaybackErrorDelay(I)V
    .locals 0

    .line 1099
    iput p1, p0, Lcom/tikilive/ui/channel/ChannelActivity;->mVideoPlaybackErrorDelay:I

    return-void
.end method
