.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;
.super Ljava/lang/Object;
.source "BaseCastConsumer.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/OnFailedListener;


# virtual methods
.method public abstract onCastAvailabilityChanged(Z)V
.end method

.method public abstract onCastDeviceDetected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method public abstract onConnectionSuspended(I)V
.end method

.method public abstract onConnectivityRecovered()V
.end method

.method public abstract onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onDisconnectionReason(I)V
.end method

.method public abstract onReconnectionStatusChanged(I)V
.end method

.method public abstract onRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract onUiVisibilityChanged(Z)V
.end method
