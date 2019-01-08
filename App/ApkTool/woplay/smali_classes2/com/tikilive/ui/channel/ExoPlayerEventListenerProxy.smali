.class Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;
.super Ljava/lang/Object;
.source "ExoPlayerEventListenerProxy.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# instance fields
.field private eventListener:Lcom/google/android/exoplayer2/Player$EventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/Player$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-void
.end method


# virtual methods
.method public getEventListener()Lcom/google/android/exoplayer2/Player$EventListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-object v0
.end method

.method public onLoadingChanged(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onLoadingChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlayerStateChanged(ZI)V

    :cond_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onPositionDiscontinuity(I)V

    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onRepeatModeChanged(I)V

    :cond_0
    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$EventListener;->onSeekProcessed()V

    :cond_0
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onShuffleModeEnabledChanged(Z)V

    :cond_0
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/Player$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    iput-object p1, p0, Lcom/tikilive/ui/channel/ExoPlayerEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-void
.end method
