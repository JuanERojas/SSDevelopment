.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;
.super Ljava/lang/Object;
.source "OnVideoCastControllerListener.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/OnTracksSelectedListener;


# virtual methods
.method public abstract onConfigurationChanged()V
.end method

.method public abstract onPlayPauseClicked(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation
.end method

.method public abstract onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end method

.method public abstract onSkipNextClicked(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation
.end method

.method public abstract onSkipPreviousClicked(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation
.end method

.method public abstract onStartTrackingTouch(Landroid/widget/SeekBar;)V
.end method

.method public abstract onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end method
