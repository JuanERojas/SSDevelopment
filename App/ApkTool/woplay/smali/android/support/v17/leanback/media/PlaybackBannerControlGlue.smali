.class public Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$SPEED;,
        Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$ACTION_;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackBaseControlGlue<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_LEFT_FIRST:I = 0x1

.field public static final ACTION_CUSTOM_RIGHT_FIRST:I = 0x1000

.field public static final ACTION_FAST_FORWARD:I = 0x80

.field public static final ACTION_PLAY_PAUSE:I = 0x40

.field public static final ACTION_REWIND:I = 0x20

.field public static final ACTION_SKIP_TO_NEXT:I = 0x100

.field public static final ACTION_SKIP_TO_PREVIOUS:I = 0x10

.field private static final NUMBER_OF_SEEK_SPEEDS:I = 0x5

.field public static final PLAYBACK_SPEED_FAST_L0:I = 0xa

.field public static final PLAYBACK_SPEED_FAST_L1:I = 0xb

.field public static final PLAYBACK_SPEED_FAST_L2:I = 0xc

.field public static final PLAYBACK_SPEED_FAST_L3:I = 0xd

.field public static final PLAYBACK_SPEED_FAST_L4:I = 0xe

.field public static final PLAYBACK_SPEED_INVALID:I = -0x1

.field public static final PLAYBACK_SPEED_NORMAL:I = 0x1

.field public static final PLAYBACK_SPEED_PAUSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlaybackBannerControlGlue"


# instance fields
.field private mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field private mIsCustomizedFastForwardSupported:Z

.field private mIsCustomizedRewindSupported:Z

.field private mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

.field private mStartPosition:J

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[ILandroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[ITT;)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2, p2, p3}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;-><init>(Landroid/content/Context;[I[ILandroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[ILandroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I[ITT;)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p4}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;-><init>(Landroid/content/Context;Landroid/support/v17/leanback/media/PlayerAdapter;)V

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 255
    array-length p1, p2

    if-eqz p1, :cond_5

    array-length p1, p2

    const/4 p4, 0x5

    if-le p1, p4, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    iput-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    .line 260
    array-length p1, p3

    if-eqz p1, :cond_4

    array-length p1, p3

    if-le p1, p4, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    iput-object p3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    .line 264
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide p1

    const-wide/16 p3, 0x80

    and-long v2, p1, p3

    cmp-long p1, v2, v0

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 265
    iput-boolean p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    .line 267
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide p3

    const-wide/16 v2, 0x20

    and-long v4, p3, v2

    cmp-long p1, v4, v0

    if-eqz p1, :cond_3

    .line 268
    iput-boolean p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedRewindSupported:Z

    :cond_3
    return-void

    .line 261
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid rewindSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid fastForwardSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decrementRewindPlaybackSpeed()V
    .locals 1

    .line 423
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0xa

    .line 431
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_0

    .line 428
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fakePause()V
    .locals 2

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 697
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 699
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->pause()V

    .line 701
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method private getMaxForwardSpeedId()I
    .locals 1

    .line 597
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getMaxRewindSpeedId()I
    .locals 1

    .line 601
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private incrementFastForwardPlaybackSpeed()V
    .locals 1

    .line 407
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    .line 415
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    goto :goto_0

    .line 412
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaybackState(Z)V
    .locals 5

    .line 530
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 535
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdateProgress()V

    .line 536
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 541
    :goto_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFadeWhenPlaying:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 542
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 547
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 548
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    .line 549
    sget p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->PLAY:I

    goto :goto_1

    :cond_3
    sget p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->PAUSE:I

    .line 552
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result v3

    if-eq v3, p1, :cond_4

    .line 553
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    .line 554
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v2, p1}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 558
    :cond_4
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    const/16 v3, 0xa

    if-eqz p1, :cond_6

    .line 560
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-lt p1, v3, :cond_5

    .line 561
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v0

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 563
    :goto_2
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getIndex()I

    move-result v4

    if-eq v4, p1, :cond_6

    .line 564
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setIndex(I)V

    .line 565
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v2, p1}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    .line 568
    :cond_6
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz p1, :cond_8

    .line 570
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v4, -0xa

    if-gt p1, v4, :cond_7

    .line 571
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    neg-int p1, p1

    sub-int/2addr p1, v3

    add-int/lit8 v1, p1, 0x1

    .line 573
    :cond_7
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getIndex()I

    move-result p1

    if-eq p1, v1, :cond_8

    .line 574
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setIndex(I)V

    .line 575
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v2, p1}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method


# virtual methods
.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 441
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    const/16 p1, 0x55

    if-eqz p2, :cond_1

    .line 443
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 444
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 446
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 447
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 452
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_4
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz p1, :cond_5

    .line 455
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 456
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eq p1, v2, :cond_6

    .line 457
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->play()V

    .line 459
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    goto :goto_6

    .line 461
    :cond_7
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, p2, :cond_8

    .line 462
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->next()V

    goto :goto_6

    .line 464
    :cond_8
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, p2, :cond_9

    .line 465
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->previous()V

    goto :goto_6

    .line 467
    :cond_9
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, p2, :cond_b

    .line 468
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getMaxForwardSpeedId()I

    move-result p2

    if-ge p1, p2, :cond_e

    .line 472
    iget-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz p1, :cond_a

    .line 474
    iput-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 476
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->fastForward()V

    goto :goto_4

    .line 484
    :cond_a
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    .line 487
    :goto_4
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->incrementFastForwardPlaybackSpeed()V

    .line 488
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    goto :goto_6

    .line 491
    :cond_b
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, p2, :cond_d

    .line 492
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getMaxRewindSpeedId()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_e

    .line 493
    iget-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz p1, :cond_c

    .line 494
    iput-boolean v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 495
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->rewind()V

    goto :goto_5

    .line 497
    :cond_c
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->fakePause()V

    .line 499
    :goto_5
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->decrementRewindPlaybackSpeed()V

    .line 500
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :cond_e
    :goto_6
    return v2
.end method

.method public getCurrentPosition()J
    .locals 9

    .line 614
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 618
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 621
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedFastForwardSupported:Z

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 624
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    sub-int/2addr v0, v1

    .line 625
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getFastForwardSpeeds()[I

    move-result-object v1

    aget v0, v1, v0

    goto :goto_0

    .line 626
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v2, -0xa

    if-gt v0, v2, :cond_6

    .line 629
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsCustomizedRewindSupported:Z

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 632
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 633
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getRewindSpeeds()[I

    move-result-object v1

    aget v0, v1, v0

    neg-int v0, v0

    .line 638
    :goto_0
    iget-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    sub-long v7, v3, v5

    int-to-long v3, v0

    mul-long v7, v7, v3

    add-long v3, v1, v7

    .line 639
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getDuration()J

    move-result-wide v0

    cmp-long v2, v3, v0

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    if-lez v2, :cond_4

    .line 640
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 641
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getDuration()J

    move-result-wide v3

    .line 642
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, v3, v4}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 643
    iput-wide v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 644
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    goto :goto_1

    :cond_4
    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 646
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 648
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, v5, v6}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 649
    iput-wide v5, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 650
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->pause()V

    move-wide v3, v5

    :cond_5
    :goto_1
    return-wide v3

    :cond_6
    const-wide/16 v0, -0x1

    return-wide v0

    .line 617
    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFastForwardSpeeds()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 585
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 593
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 10

    .line 280
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getSupportedActions()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 281
    iget-object v6, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v6, :cond_0

    .line 282
    new-instance v4, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 283
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 282
    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    .line 284
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v4, :cond_1

    .line 286
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 287
    iput-object v7, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    :cond_1
    :goto_0
    const-wide/16 v4, 0x20

    and-long v8, v0, v4

    cmp-long v4, v8, v2

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v4, :cond_2

    .line 290
    new-instance v4, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 291
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindSpeeds:[I

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 290
    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    cmp-long v4, v8, v2

    if-nez v4, :cond_3

    .line 292
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v4, :cond_3

    .line 293
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 294
    iput-object v7, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    :cond_3
    :goto_1
    const-wide/16 v4, 0x40

    and-long v8, v0, v4

    cmp-long v4, v8, v2

    if-eqz v4, :cond_4

    .line 296
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v4, :cond_4

    .line 297
    new-instance v4, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 298
    new-instance v4, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 299
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 298
    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    cmp-long v4, v8, v2

    if-nez v4, :cond_5

    .line 300
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v4, :cond_5

    .line 301
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 302
    iput-object v7, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    :cond_5
    :goto_2
    const-wide/16 v4, 0x80

    and-long v8, v0, v4

    cmp-long v4, v8, v2

    if-eqz v4, :cond_6

    .line 304
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v4, :cond_6

    .line 305
    new-instance v4, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 307
    new-instance v4, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 308
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardSpeeds:[I

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 307
    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    cmp-long v4, v8, v2

    if-nez v4, :cond_7

    .line 310
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v4, :cond_7

    .line 311
    iget-object v4, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 312
    iput-object v7, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    :cond_7
    :goto_3
    const-wide/16 v4, 0x100

    and-long v8, v0, v4

    cmp-long v0, v8, v2

    if-eqz v0, :cond_8

    .line 314
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v0, :cond_8

    .line 315
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 316
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 315
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    cmp-long v0, v8, v2

    if-nez v0, :cond_9

    .line 317
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 319
    iput-object v7, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    :cond_9
    :goto_4
    return-void
.end method

.method protected onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 2

    .line 325
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;)V

    .line 336
    new-instance v1, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V

    return-object v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p1, 0x6f

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 384
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    .line 385
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object p1

    if-nez p1, :cond_0

    .line 387
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 392
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 393
    invoke-virtual {p0, p1, p3}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_1
    return v1

    :cond_2
    return v2

    .line 374
    :cond_3
    :pswitch_0
    iget p3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v3, 0xa

    if-ge p3, v3, :cond_5

    iget p3, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    const/16 v3, -0xa

    if-gt p3, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_8

    .line 377
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->play()V

    .line 378
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackStatusAfterUserAction()V

    if-eq p2, v0, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPlayCompleted()V
    .locals 2

    .line 517
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 519
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 520
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 522
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method protected onPlayStateChanged()V
    .locals 0

    .line 511
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    .line 512
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method onUpdatePlaybackState()V
    .locals 1

    .line 526
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method onUpdatePlaybackStatusAfterUserAction()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->updatePlaybackState(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 683
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 684
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    .line 686
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->pause()V

    .line 688
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public play()V
    .locals 5

    .line 658
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 664
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 665
    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v0, 0x0

    .line 666
    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    .line 671
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartTime:J

    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mIsPlaying:Z

    .line 673
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlaybackSpeed:I

    .line 674
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-wide v1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->mStartPosition:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    .line 675
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->play()V

    .line 677
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 0

    .line 274
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    .line 275
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onUpdatePlaybackState()V

    return-void
.end method
