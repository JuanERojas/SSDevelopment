.class public abstract Landroid/support/v17/leanback/media/PlaybackGlueHost;
.super Ljava/lang/Object;
.source "PlaybackGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;,
        Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;
    }
.end annotation


# instance fields
.field mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final attachToGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 1

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    .line 217
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 218
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlueHost;->mGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    :cond_1
    return-void
.end method

.method public fadeOut()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getPlayerCallback()Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 0

    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 0

    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setFadingEnabled(Z)V

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0

    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 0

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 0

    return-void
.end method
