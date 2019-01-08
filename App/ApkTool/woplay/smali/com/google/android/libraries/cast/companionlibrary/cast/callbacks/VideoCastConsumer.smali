.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;
.super Ljava/lang/Object;
.source "VideoCastConsumer.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;


# virtual methods
.method public abstract onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
.end method

.method public abstract onApplicationConnectionFailed(I)V
.end method

.method public abstract onApplicationDisconnected(I)V
.end method

.method public abstract onApplicationStatusChanged(Ljava/lang/String;)V
.end method

.method public abstract onApplicationStopFailed(I)V
.end method

.method public abstract onDataMessageReceived(Ljava/lang/String;)V
.end method

.method public abstract onDataMessageSendFailed(I)V
.end method

.method public abstract onMediaLoadResult(I)V
.end method

.method public abstract onMediaQueueOperationResult(II)V
.end method

.method public abstract onMediaQueueUpdated(Ljava/util/List;Lcom/google/android/gms/cast/MediaQueueItem;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "IZ)V"
        }
    .end annotation
.end method

.method public abstract onNamespaceRemoved()V
.end method

.method public abstract onRemoteMediaPlayerMetadataUpdated()V
.end method

.method public abstract onRemoteMediaPlayerStatusUpdated()V
.end method

.method public abstract onRemoteMediaPreloadStatusUpdated(Lcom/google/android/gms/cast/MediaQueueItem;)V
.end method

.method public abstract onTextTrackEnabledChanged(Z)V
.end method

.method public abstract onTextTrackLocaleChanged(Ljava/util/Locale;)V
.end method

.method public abstract onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V
.end method

.method public abstract onUpcomingPlayClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V
.end method

.method public abstract onUpcomingStopClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V
.end method

.method public abstract onVolumeChanged(DZ)V
.end method
