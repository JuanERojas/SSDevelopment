.class public abstract Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackGlue;
.source "PlaybackBaseControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnActionClickedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v17/leanback/media/PlayerAdapter;",
        ">",
        "Landroid/support/v17/leanback/media/PlaybackGlue;",
        "Landroid/support/v17/leanback/widget/OnActionClickedListener;",
        "Landroid/view/View$OnKeyListener;"
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_LEFT_FIRST:I = 0x1

.field public static final ACTION_CUSTOM_RIGHT_FIRST:I = 0x1000

.field public static final ACTION_FAST_FORWARD:I = 0x80

.field public static final ACTION_PLAY_PAUSE:I = 0x40

.field public static final ACTION_REPEAT:I = 0x200

.field public static final ACTION_REWIND:I = 0x20

.field public static final ACTION_SHUFFLE:I = 0x400

.field public static final ACTION_SKIP_TO_NEXT:I = 0x100

.field public static final ACTION_SKIP_TO_PREVIOUS:I = 0x10

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "PlaybackTransportGlue"


# instance fields
.field final mAdapterCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

.field mBuffering:Z

.field mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

.field mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field mCover:Landroid/graphics/drawable/Drawable;

.field mErrorCode:I

.field mErrorMessage:Ljava/lang/String;

.field mErrorSet:Z

.field mFadeWhenPlaying:Z

.field mIsPlaying:Z

.field mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field final mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

.field mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field mVideoHeight:I

.field mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mIsPlaying:Z

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    .line 126
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    .line 127
    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    .line 128
    iput p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    .line 129
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 133
    new-instance p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;

    invoke-direct {p1, p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;)V

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mAdapterCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    .line 213
    iput-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 214
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    iget-object p2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mAdapterCallback:Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/media/PlayerAdapter;->setCallback(Landroid/support/v17/leanback/media/PlayerAdapter$Callback;)V

    return-void
.end method

.method protected static notifyItemChanged(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;Ljava/lang/Object;)V
    .locals 1

    .line 407
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method private updateControlsRow()V
    .locals 0

    .line 378
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    return-void
.end method


# virtual methods
.method public getArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 514
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getBufferedPosition()J
    .locals 2

    .line 471
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .locals 1

    .line 354
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 464
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 457
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .locals 1

    .line 361
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-object v0
.end method

.method public final getPlayerAdapter()Landroid/support/v17/leanback/media/PlayerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    .line 617
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->getSupportedActions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 557
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 383
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final isPrepared()Z
    .locals 1

    .line 476
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->next()V

    return-void
.end method

.method public abstract onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
.end method

.method onAttachHostCallback()V
    .locals 3

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_2

    .line 238
    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    iget v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    .line 241
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    .line 244
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    iget-boolean v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_2
    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1

    .line 223
    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 224
    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    .line 225
    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    .line 226
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateDefaultControlsRow()V

    .line 227
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateDefaultRowPresenter()V

    .line 228
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    .line 229
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    .line 231
    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 232
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onAttachHostCallback()V

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/media/PlayerAdapter;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    return-void
.end method

.method onCreateDefaultControlsRow()V
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;-><init>(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    :cond_0
    return-void
.end method

.method onCreateDefaultRowPresenter()V
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    :cond_0
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method protected abstract onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method onDetachHostCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 250
    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    const/4 v1, 0x0

    .line 251
    iput-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onDetachHostCallback()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 271
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->onDetachedFromHost()V

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    .line 273
    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    return-void
.end method

.method protected onHostStart()V
    .locals 2

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    return-void
.end method

.method protected onHostStop()V
    .locals 2

    .line 264
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->setProgressUpdatingEnabled(Z)V

    return-void
.end method

.method public abstract onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method protected onMetadataChanged()V
    .locals 3

    .line 564
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    .line 572
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    .line 574
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_1
    return-void
.end method

.method protected onPlayCompleted()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 597
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 599
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 600
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayCompleted(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayStateChanged()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 584
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 586
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPreparedStateChanged()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 484
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    .line 485
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v3, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUpdateBufferedProgress()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 440
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getBufferedPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    :cond_0
    return-void
.end method

.method protected onUpdateDuration()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    .line 449
    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->getDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 448
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    :cond_1
    return-void
.end method

.method protected onUpdateProgress()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 432
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/PlayerAdapter;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getCurrentPosition()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 433
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->play()V

    return-void
.end method

.method public previous()V
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlayerAdapter;->previous()V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 610
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerAdapter:Landroid/support/v17/leanback/media/PlayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/media/PlayerAdapter;->seekTo(J)V

    return-void
.end method

.method public setArt(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 500
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 503
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    .line 504
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mCover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 506
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_1
    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1

    .line 297
    iput-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    .line 298
    iget-boolean p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mFadeWhenPlaying:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .locals 2

    .line 323
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 324
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    .line 325
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    .line 326
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    .line 327
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 328
    new-instance p1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 330
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreatePrimaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    .line 331
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 334
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 335
    new-instance p1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 337
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    .line 338
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 340
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->updateControlsRow()V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    .line 347
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 523
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 526
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mSubtitle:Ljava/lang/CharSequence;

    .line 527
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 528
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 544
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 547
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mTitle:Ljava/lang/CharSequence;

    .line 548
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 549
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_1
    return-void
.end method
