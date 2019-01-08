.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;
.super Ljava/lang/Object;
.source "DataCastConsumer.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;


# virtual methods
.method public abstract onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onApplicationConnectionFailed(I)V
.end method

.method public abstract onApplicationDisconnected(I)V
.end method

.method public abstract onApplicationStatusChanged(Ljava/lang/String;)V
.end method

.method public abstract onApplicationStopFailed(I)V
.end method

.method public abstract onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageSendFailed(Lcom/google/android/gms/common/api/Status;)V
.end method

.method public abstract onRemoved(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
.end method

.method public abstract onVolumeChanged(DZ)V
.end method
