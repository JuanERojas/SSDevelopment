.class public Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost;
.source "PlaybackFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

.field final mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;-><init>()V

    .line 120
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$2;-><init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 40
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    return-object p0
.end method


# virtual methods
.method public fadeOut()V
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->fadeOut()V

    return-void
.end method

.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isControlsOverlayVisible()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->notifyPlaybackRowChanged()V

    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setControlsOverlayAutoHideEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;-><init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    :goto_0
    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    return-void
.end method