.class public Lcom/tikilive/ui/channel/ChannelFullscreenFragment;
.super Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.channel.ChannelFullscreenFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mBuyThisMusic:Landroid/widget/TextView;

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mChannelInfo:Landroid/widget/LinearLayout;

.field private mChannelInfoTimer:Ljava/util/Timer;

.field private mChannelName:Landroid/widget/TextView;

.field private mChannelNumber:Landroid/widget/TextView;

.field private mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

.field private mEventDescription:Landroid/widget/TextView;

.field private mEventEnd:Landroid/widget/TextView;

.field private mEventName:Landroid/widget/TextView;

.field private mEventProgress:Landroid/widget/ProgressBar;

.field private mEventStart:Landroid/widget/TextView;

.field private mEventTimeline:Landroid/widget/LinearLayout;

.field private mHasError:Z

.field private mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

.field private mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

.field private mOmniverse:Landroid/widget/TextView;

.field private mOnChannelGuideRequestedListener:Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;

.field private mRadioSongChanged:Landroid/content/BroadcastReceiver;

.field private mSubscrRequired:Landroid/widget/FrameLayout;

.field private mSubscrRequiredActionLogin:Landroid/widget/Button;

.field private mSubscrRequiredActionPurchase:Landroid/widget/Button;

.field private mSubscrRequiredActionRegister:Landroid/widget/Button;

.field private mSubscrRequiredActions:Landroid/widget/LinearLayout;

.field private mSubscrRequiredLine1:Landroid/widget/TextView;

.field private mSubscrRequiredLine2:Landroid/widget/TextView;

.field private mSubscrRequiredTitle:Landroid/widget/TextView;

.field private mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

.field private pickSubtitles:Landroid/widget/LinearLayout;

.field private pickSubtitlesButton:Landroid/widget/ImageButton;

.field private pickSubtitlesCloseButton:Landroid/widget/Button;

.field private pickSubtitlesContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;-><init>()V

    .line 107
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    .line 111
    new-instance v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$1;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mRadioSongChanged:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOmniverse:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitles:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/Button;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesCloseButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->doShowChannelInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOnChannelGuideRequestedListener:Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->hideChannelInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    return p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/support/v7/app/MediaRouteButton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->launchCast()V

    return-void
.end method

.method static synthetic access$500(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/app/Activity;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->uncheckAllSubtitles()V

    return-void
.end method

.method static synthetic access$900(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    return-object p0
.end method

.method private cancelChannelInfoTimer()V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfoTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private doShowChannelInfo()V
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->cancelChannelInfoTimer()V

    .line 798
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 809
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->renderChannelInfo()V

    .line 819
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfo:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 821
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    if-nez v0, :cond_2

    .line 822
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfoTimer:Ljava/util/Timer;

    .line 823
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$19;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 839
    :cond_2
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    if-nez v0, :cond_3

    .line 840
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->updateSubtitleButton()V

    goto :goto_0

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private hideChannelInfo()V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private launchCast()V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 649
    :cond_0
    new-instance v1, Lcom/tikilive/ui/model/Channel;

    invoke-direct {v1, v0}, Lcom/tikilive/ui/model/Channel;-><init>(Lcom/tikilive/ui/model/Channel;)V

    .line 651
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 652
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;

    invoke-direct {v3, p0, v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$13;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Lcom/tikilive/ui/model/Channel;)V

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$14;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$14;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    .line 653
    invoke-virtual {v0, v2, v3, v1}, Lcom/tikilive/ui/backend/Api;->getRadioChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$15;

    invoke-direct {v3, p0, v1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$15;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Lcom/tikilive/ui/model/Channel;)V

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$16;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$16;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    .line 704
    invoke-virtual {v0, v2, v3, v1}, Lcom/tikilive/ui/backend/Api;->getChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_0
    return-void
.end method

.method private renderChannelInfo()V
    .locals 15

    .line 872
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 882
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v1

    .line 884
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    const/high16 v3, 0x44070000    # 540.0f

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_3

    .line 885
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 891
    :cond_3
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 892
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 893
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 894
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 895
    iget-object v6, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 896
    iget-object v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 898
    iget-object v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpg-float v7, v2, v3

    if-gez v7, :cond_5

    .line 899
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    if-eqz v7, :cond_5

    .line 900
    :cond_4
    iget-object v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 902
    :cond_5
    iget-object v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 905
    :cond_6
    iget-object v7, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    :goto_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 908
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 909
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v10

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v1

    add-int/2addr v10, v1

    int-to-long v13, v10

    mul-long v13, v13, v11

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 910
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventStart:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventEnd:Landroid/widget/TextView;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v12, v6, v10

    const-wide/16 v6, 0x64

    mul-long v12, v12, v6

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v10, v6, v8

    div-long/2addr v12, v10

    long-to-double v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 914
    :cond_7
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->renderUnknownChannelInfo()V

    .line 917
    :goto_1
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isOmniverse()Z

    move-result v0

    if-eqz v0, :cond_a

    cmpg-float v0, v2, v3

    if-gez v0, :cond_9

    .line 918
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    if-eqz v0, :cond_9

    .line 919
    :cond_8
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOmniverse:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 921
    :cond_9
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOmniverse:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 924
    :cond_a
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOmniverse:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void
.end method

.method private renderUnknownChannelInfo()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventTimeline:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventStart:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventEnd:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private uncheckAllSubtitles()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 315
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 316
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeChannel()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 453
    new-instance v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$7;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-super {p0, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    .line 510
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public closePickSubstitles()V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitles:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isOmniverse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOmniverse:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected handlePlayerPaused()V
    .locals 1

    .line 1064
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->closePickSubstitles()V

    .line 1067
    :cond_0
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->handlePlayerPaused()V

    return-void
.end method

.method protected handlePlayerTimeout()V
    .locals 1

    .line 1056
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->closePickSubstitles()V

    .line 1059
    :cond_0
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->handlePlayerTimeout()V

    return-void
.end method

.method protected hideErrorLayoutElements()V
    .locals 2

    .line 515
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->hideErrorLayoutElements()V

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    .line 519
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionRegister:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionPurchase:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public isPickSubstitlesOpen()Z
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitles:Landroid/widget/LinearLayout;

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

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 149
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelNumberRequestedListener:Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOnChannelGuideRequestedListener:Lcom/tikilive/ui/listener/OnChannelGuideRequestedListener;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->activity:Landroid/app/Activity;

    return-void

    .line 156
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnChannelGuideRequestedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :catch_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnChannelNumberRequestedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x5

    .line 951
    new-array v3, p1, [Ljava/lang/String;

    const-string p1, "id"

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "name"

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const-string p1, "img"

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "purchase_url"

    const/4 p2, 0x3

    aput-object p1, v3, p2

    const-string p1, "description"

    const/4 p2, 0x4

    aput-object p1, v3, p2

    .line 954
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 955
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p1

    const p2, 0x5f5e100

    add-int/2addr p1, p2

    .line 956
    new-instance p2, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    sget-object v0, Lcom/tikilive/ui/guide/ChannelGuideContentProvider;->CONTENT_URI_EVENTS:Landroid/net/Uri;

    int-to-long v4, p1

    .line 958
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d004e

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p2}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 168
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    goto :goto_0

    .line 173
    :cond_0
    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 176
    :goto_0
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz p2, :cond_1

    const p2, 0x7f0a01b8

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/app/MediaRouteButton;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    .line 179
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object p3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addMediaRouterButton(Landroid/support/v7/app/MediaRouteButton;)V

    .line 181
    new-instance p2, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$2;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    .line 217
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object p3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    :cond_1
    const p2, 0x7f0a02df

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const p2, 0x7f0a020d

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitles:Landroid/widget/LinearLayout;

    const p2, 0x7f0a020f

    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0a020e

    .line 223
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesCloseButton:Landroid/widget/Button;

    .line 225
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    new-instance p3, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesCloseButton:Landroid/widget/Button;

    new-instance p3, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$4;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$4;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 443
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onDetach()V

    .line 444
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mVideoCastConsumer:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 971
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 972
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 973
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mRadioPlayer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 976
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x8

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 977
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 978
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    .line 979
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 980
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 981
    iget-object v4, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 984
    :cond_0
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 v3, 0x2

    .line 986
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 987
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 988
    :cond_1
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 990
    :cond_2
    iget-object v4, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 991
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    new-instance v5, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$20;

    invoke-direct {v5, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$20;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    .line 992
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 999
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1000
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1002
    new-instance v5, Lcom/tikilive/ui/model/Event;

    invoke-direct {v5, v4, v0}, Lcom/tikilive/ui/model/Event;-><init>(ILjava/lang/String;)V

    .line 1004
    :cond_3
    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/Event;->setImageUrl(Ljava/lang/String;)V

    .line 1005
    invoke-static {}, Lcom/tikilive/ui/helper/Utils;->getMinFromTs()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tikilive/ui/model/Event;->setStart(I)V

    const/16 v0, 0x1c20

    .line 1006
    invoke-virtual {v5, v0}, Lcom/tikilive/ui/model/Event;->setDuration(I)V

    const/4 v0, 0x3

    .line 1007
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1008
    invoke-virtual {v5, p2}, Lcom/tikilive/ui/model/Event;->setPurchaseUrl(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 1009
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1010
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1

    .line 1013
    :cond_4
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    :goto_1
    invoke-virtual {p1, v5}, Lcom/tikilive/ui/model/Channel;->setCurrentEvent(Lcom/tikilive/ui/model/Event;)V

    goto :goto_3

    .line 1017
    :cond_5
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getGenre()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1018
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1019
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1021
    :cond_6
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    :goto_2
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1024
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 1026
    :goto_3
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 1027
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    new-instance p2, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$21;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$21;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    .line 1028
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 427
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onPause()V

    .line 428
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mRadioSongChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 412
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onResume()V

    .line 413
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mRadioSongChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tikilive.ui.service.RADIO_SONG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->setHistoryChannelPlayer()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 437
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onStop()V

    .line 438
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->cancelChannelInfoTimer()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 322
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0077

    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelInfo:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0079

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelNumber:Landroid/widget/TextView;

    const p2, 0x7f0a0078

    .line 326
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelName:Landroid/widget/TextView;

    const p2, 0x7f0a00e2

    .line 327
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventName:Landroid/widget/TextView;

    const p2, 0x7f0a00e0

    .line 328
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventDescription:Landroid/widget/TextView;

    const p2, 0x7f0a00e3

    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventProgress:Landroid/widget/ProgressBar;

    const p2, 0x7f0a00e4

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventStart:Landroid/widget/TextView;

    const p2, 0x7f0a00e1

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventEnd:Landroid/widget/TextView;

    const p2, 0x7f0a00e5

    .line 332
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mEventTimeline:Landroid/widget/LinearLayout;

    const p2, 0x7f0a005f

    .line 333
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    const p2, 0x7f0a01ee

    .line 334
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mOmniverse:Landroid/widget/TextView;

    const p2, 0x7f0a02d3

    .line 336
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    const p2, 0x7f0a02db

    .line 337
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    const p2, 0x7f0a02d8

    .line 338
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    const p2, 0x7f0a02d9

    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine2:Landroid/widget/TextView;

    const p2, 0x7f0a02d4

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActions:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02d5

    .line 341
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    const p2, 0x7f0a02d7

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionRegister:Landroid/widget/Button;

    const p2, 0x7f0a02d6

    .line 343
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionPurchase:Landroid/widget/Button;

    const p2, 0x7f0a007b

    .line 345
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 346
    new-instance p2, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p2, p0, v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$5;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mBuyThisMusic:Landroid/widget/TextView;

    new-instance p2, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$6;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$6;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showChannelInfo()V
    .locals 1

    const/4 v0, 0x1

    .line 787
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo(Z)V

    return-void
.end method

.method public showChannelInfo(Z)V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->doShowChannelInfo()V

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 767
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->doShowChannelInfo()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 771
    sget-object p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->TAG:Ljava/lang/String;

    const-string v1, "Calling loadCurrentEvent from ChannelFullscreenFragment"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    .line 773
    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$17;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$17;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/tikilive/ui/backend/Api;->loadCurrentEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V

    goto :goto_0

    .line 780
    :cond_2
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->doShowChannelInfo()V

    :goto_0
    return-void
.end method

.method protected showErrorScreen(Ljava/lang/String;)V
    .locals 1

    .line 531
    invoke-super {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    if-eqz p1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mMediaRouteButton:Landroid/support/v7/app/MediaRouteButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz p1, :cond_1

    .line 537
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->disconnect()V

    :cond_1
    const/4 p1, 0x1

    .line 539
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    .line 540
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showChannelInfo(Z)V

    return-void
.end method

.method protected showRequiredMembershipScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 605
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->closePickSubstitles()V

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->hideChannelInfo()V

    const/4 v0, 0x1

    .line 610
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    .line 612
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine2:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$11;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$11;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 629
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionRegister:Landroid/widget/Button;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$12;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$12;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionRegister:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionPurchase:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected showSubscriptionErrorScreen(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 546
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->isPickSubstitlesOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->closePickSubstitles()V

    .line 550
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showErrorScreen(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->hideErrorLayoutElements()V

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mHasError:Z

    .line 554
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 556
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    const v2, 0x7f120277

    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://ver.woplay.tv"

    const-string v5, "http://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/offers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    const v2, 0x7f120221

    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const v4, 0x7f120028

    invoke-virtual {p0, v4}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine2:Landroid/widget/TextView;

    const v2, 0x7f120222

    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredLine2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    new-instance v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$8;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$8;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionLogin:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 572
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionRegister:Landroid/widget/Button;

    new-instance v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$9;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$9;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionRegister:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    if-lez p2, :cond_2

    .line 582
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionPurchase:Landroid/widget/Button;

    new-instance p2, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$10;-><init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionPurchase:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 593
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActionPurchase:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 595
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredActions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 599
    invoke-virtual {p0, p3}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->playPreviewStream(Ljava/lang/String;)V

    return-void
.end method

.method protected updateSubtitleButton()V
    .locals 4

    .line 848
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getTextTracksHelper()Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcom/tikilive/ui/helper/TextTracksHelper;->hasTextTracks()Z

    move-result v1

    const/16 v2, 0x8

    const v3, 0x7f0800ef

    if-eqz v1, :cond_1

    .line 850
    invoke-virtual {v0}, Lcom/tikilive/ui/helper/TextTracksHelper;->textTracksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 855
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitles:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 857
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_1

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 861
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->pickSubtitlesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
