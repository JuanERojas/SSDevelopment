.class public abstract Landroid/support/v17/leanback/media/PlaybackControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackGlue;
.source "PlaybackControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnActionClickedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;
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

.field static final DEBUG:Z = false

.field static final MSG_UPDATE_PLAYBACK_STATE:I = 0x64

.field private static final NUMBER_OF_SEEK_SPEEDS:I = 0x5

.field public static final PLAYBACK_SPEED_FAST_L0:I = 0xa

.field public static final PLAYBACK_SPEED_FAST_L1:I = 0xb

.field public static final PLAYBACK_SPEED_FAST_L2:I = 0xc

.field public static final PLAYBACK_SPEED_FAST_L3:I = 0xd

.field public static final PLAYBACK_SPEED_FAST_L4:I = 0xe

.field public static final PLAYBACK_SPEED_INVALID:I = -0x1

.field public static final PLAYBACK_SPEED_NORMAL:I = 0x1

.field public static final PLAYBACK_SPEED_PAUSED:I = 0x0

.field static final TAG:Ljava/lang/String; = "PlaybackControlGlue"

.field private static final UPDATE_PLAYBACK_STATE_DELAY_MS:I = 0x7d0

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

.field private mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field private mFadeWhenPlaying:Z

.field private mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field final mGlueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/media/PlaybackControlGlue;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;

    invoke-direct {v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2, p2}, Landroid/support/v17/leanback/media/PlaybackControlGlue;-><init>(Landroid/content/Context;[I[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 1

    .line 229
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 190
    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 191
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    .line 207
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    .line 230
    array-length p1, p2

    if-eqz p1, :cond_3

    array-length p1, p2

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    iput-object p2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    .line 234
    array-length p1, p3

    if-eqz p1, :cond_2

    array-length p1, p3

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iput-object p3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    return-void

    .line 235
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid rewindSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid fastForwardSpeeds array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMaxForwardSpeedId()I
    .locals 1

    .line 561
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getMaxRewindSpeedId()I
    .locals 1

    .line 565
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static getSpeedString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "PLAYBACK_SPEED_FAST_L4"

    return-object p0

    :pswitch_1
    const-string p0, "PLAYBACK_SPEED_FAST_L3"

    return-object p0

    :pswitch_2
    const-string p0, "PLAYBACK_SPEED_FAST_L2"

    return-object p0

    :pswitch_3
    const-string p0, "PLAYBACK_SPEED_FAST_L1"

    return-object p0

    :pswitch_4
    const-string p0, "PLAYBACK_SPEED_FAST_L0"

    return-object p0

    :pswitch_5
    const-string p0, "PLAYBACK_SPEED_NORMAL"

    return-object p0

    :pswitch_6
    const-string p0, "PLAYBACK_SPEED_PAUSED"

    return-object p0

    :pswitch_7
    const-string p0, "PLAYBACK_SPEED_INVALID"

    return-object p0

    :pswitch_8
    const-string p0, "-PLAYBACK_SPEED_FAST_L0"

    return-object p0

    :pswitch_9
    const-string p0, "-PLAYBACK_SPEED_FAST_L1"

    return-object p0

    :pswitch_a
    const-string p0, "-PLAYBACK_SPEED_FAST_L2"

    return-object p0

    :pswitch_b
    const-string p0, "-PLAYBACK_SPEED_FAST_L3"

    return-object p0

    :pswitch_c
    const-string p0, "-PLAYBACK_SPEED_FAST_L4"

    return-object p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V
    .locals 1

    .line 728
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 730
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method private updateControlsRow()V
    .locals 3

    .line 569
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateRowMetadata()V

    .line 570
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateControlButtons()V

    .line 571
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 572
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    return-void
.end method

.method private updatePlaybackState(I)V
    .locals 6

    .line 671
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 678
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-lt p1, v2, :cond_1

    add-int/lit8 v1, p1, -0xa

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 683
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getIndex()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 684
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v5, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setIndex(I)V

    .line 685
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    .line 688
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v1, :cond_4

    const/16 v1, -0xa

    if-gt p1, v1, :cond_3

    neg-int v1, p1

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 693
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getIndex()I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 694
    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setIndex(I)V

    .line 695
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_4
    if-nez p1, :cond_5

    .line 700
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateProgress()V

    .line 701
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    goto :goto_2

    .line 703
    :cond_5
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    .line 706
    :goto_2
    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 707
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    if-ne p1, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    .line 710
    :cond_7
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v1, :cond_9

    if-nez p1, :cond_8

    const/4 v4, 0x0

    .line 714
    :cond_8
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result p1

    if-eq p1, v4, :cond_9

    .line 715
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    .line 716
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    .line 719
    :cond_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 721
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_a

    .line 722
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private updatePlaybackStatusAfterUserAction()V
    .locals 4

    .line 576
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState(I)V

    .line 578
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 579
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateRowMetadata()V
    .locals 2

    .line 599
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setTotalTime(I)V

    .line 608
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMediaArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMediaDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setTotalTime(I)V

    .line 612
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    .line 615
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 364
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreatePrimaryActions(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;)V

    return-object v0
.end method

.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 494
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    const/16 p1, 0x55

    if-eqz p2, :cond_1

    .line 496
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 497
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
    if-eqz p2, :cond_3

    .line 499
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 500
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 505
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-ne p1, v2, :cond_5

    goto :goto_4

    :cond_4
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eqz p1, :cond_5

    .line 508
    :goto_4
    iput v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 509
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->pause()V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    .line 510
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eq p1, v2, :cond_6

    .line 511
    iput v2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 512
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    .line 514
    :cond_6
    :goto_5
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    goto :goto_8

    .line 516
    :cond_7
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, p2, :cond_8

    .line 517
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->next()V

    goto :goto_8

    .line 519
    :cond_8
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, p2, :cond_9

    .line 520
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->previous()V

    goto :goto_8

    .line 522
    :cond_9
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, p2, :cond_a

    .line 523
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMaxForwardSpeedId()I

    move-result p2

    if-ge p1, p2, :cond_c

    .line 524
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xa

    .line 532
    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    goto :goto_6

    .line 529
    :pswitch_0
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 535
    :goto_6
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    .line 536
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    goto :goto_8

    .line 539
    :cond_a
    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, p2, :cond_b

    .line 540
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMaxRewindSpeedId()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_c

    .line 541
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    packed-switch p1, :pswitch_data_1

    const/16 p1, -0xa

    .line 549
    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    goto :goto_7

    .line 546
    :pswitch_1
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    sub-int/2addr p1, v2

    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 552
    :goto_7
    iget p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    .line 553
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xd
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public enableProgressUpdating(Z)V
    .locals 0

    return-void
.end method

.method public getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    return-object v0
.end method

.method public getControlsRowPresenter()Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSpeedId()I
.end method

.method public getFastForwardSpeeds()[I
    .locals 1

    .line 313
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public abstract getMediaArt()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMediaDuration()I
.end method

.method public abstract getMediaSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getMediaTitle()Ljava/lang/CharSequence;
.end method

.method public getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .locals 1

    .line 320
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public abstract getSupportedActions()J
.end method

.method public getUpdatePeriod()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public abstract hasValidMedia()Z
.end method

.method public isFadingEnabled()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    return v0
.end method

.method public abstract isMediaPlaying()Z
.end method

.method public isPlaying()Z
    .locals 1

    .line 778
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 243
    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    .line 244
    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    .line 245
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreateControlsRowAndPresenter()V

    .line 248
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    .line 249
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method protected onCreateControlsRowAndPresenter()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;-><init>(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackControlGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackControlGlue;)V

    .line 294
    new-instance v1, Landroid/support/v17/leanback/media/PlaybackControlGlue$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    :cond_1
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    .line 265
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    return-void
.end method

.method protected onHostStart()V
    .locals 1

    const/4 v0, 0x1

    .line 254
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method protected onHostStop()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p1, 0x6f

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 470
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 471
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 472
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v0, 0x40

    .line 475
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x20

    .line 476
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    .line 477
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10

    .line 478
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x100

    .line 479
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_2

    .line 480
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 481
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_1
    return v2

    :cond_2
    return v1

    .line 460
    :cond_3
    :pswitch_0
    iget p3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    const/16 v3, 0xa

    if-ge p3, v3, :cond_5

    iget p3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

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

    .line 463
    iput v2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 464
    iget p3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    .line 465
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    if-eq p2, v0, :cond_6

    if-ne p2, p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMetadataChanged()V
    .locals 0

    .line 864
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateRowMetadata()V

    return-void
.end method

.method protected onStateChanged()V
    .locals 4

    .line 841
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 844
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 846
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentSpeedId()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eq v0, v1, :cond_1

    .line 848
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 852
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    goto :goto_0

    .line 855
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    :goto_0
    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    return-void
.end method

.method public play(I)V
    .locals 0

    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 1

    .line 346
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 347
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    .line 348
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    move-result-object v0

    .line 347
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 350
    new-instance p1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 352
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    .line 353
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 354
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateControlsRow()V

    return-void
.end method

.method public setControlsRowPresenter(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 1

    .line 327
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    .line 328
    iget-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    .line 401
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-void
.end method

.method updateControlButtons()V
    .locals 10

    .line 629
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 630
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getSupportedActions()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    and-long v5, v1, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    const/16 v8, 0x10

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 631
    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v7, :cond_0

    .line 632
    new-instance v5, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    .line 633
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {v0, v8, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    .line 634
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v5, :cond_1

    .line 635
    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 636
    iput-object v9, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    :cond_1
    :goto_0
    const-wide/16 v5, 0x20

    and-long v7, v1, v5

    cmp-long v5, v7, v3

    const/16 v6, 0x20

    if-eqz v5, :cond_2

    .line 638
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v5, :cond_2

    .line 639
    new-instance v5, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    .line 641
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v0, v6, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    cmp-long v5, v7, v3

    if-nez v5, :cond_3

    .line 642
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v5, :cond_3

    .line 643
    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 644
    iput-object v9, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    :cond_3
    :goto_1
    const-wide/16 v5, 0x40

    and-long v7, v1, v5

    cmp-long v5, v7, v3

    const/16 v6, 0x40

    if-eqz v5, :cond_4

    .line 646
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v5, :cond_4

    .line 647
    new-instance v5, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    .line 648
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v0, v6, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    cmp-long v5, v7, v3

    if-nez v5, :cond_5

    .line 649
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v5, :cond_5

    .line 650
    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 651
    iput-object v9, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    :cond_5
    :goto_2
    const-wide/16 v5, 0x80

    and-long v7, v1, v5

    cmp-long v5, v7, v3

    const/16 v6, 0x80

    if-eqz v5, :cond_6

    .line 653
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v5, :cond_6

    .line 654
    new-instance v5, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    .line 656
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v0, v6, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    cmp-long v5, v7, v3

    if-nez v5, :cond_7

    .line 657
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v5, :cond_7

    .line 658
    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 659
    iput-object v9, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    :cond_7
    :goto_3
    const-wide/16 v5, 0x100

    and-long v7, v1, v5

    cmp-long v1, v7, v3

    const/16 v2, 0x100

    if-eqz v1, :cond_8

    .line 661
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v1, :cond_8

    .line 662
    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    .line 663
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    cmp-long v1, v7, v3

    if-nez v1, :cond_9

    .line 664
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v1, :cond_9

    .line 665
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    .line 666
    iput-object v9, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    :cond_9
    :goto_4
    return-void
.end method

.method updatePlaybackState()V
    .locals 1

    .line 621
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentSpeedId()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    .line 623
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState(I)V

    :cond_0
    return-void
.end method

.method public updateProgress()V
    .locals 2

    .line 432
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentPosition()I

    move-result v0

    .line 434
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    :cond_0
    return-void
.end method