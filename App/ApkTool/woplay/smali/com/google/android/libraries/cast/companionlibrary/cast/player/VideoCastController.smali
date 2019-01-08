.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;
.super Ljava/lang/Object;
.source "VideoCastController.java"


# static fields
.field public static final CC_DISABLED:I = 0x2

.field public static final CC_ENABLED:I = 0x1

.field public static final CC_HIDDEN:I = 0x3


# virtual methods
.method public abstract adjustControllersForLiveStream(Z)V
.end method

.method public abstract closeActivity()V
.end method

.method public abstract onQueueItemsUpdated(II)V
.end method

.method public abstract setClosedCaptionState(I)V
.end method

.method public abstract setImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setNextPreviousVisibilityPolicy(I)V
.end method

.method public abstract setOnVideoCastControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;)V
.end method

.method public abstract setPlaybackStatus(I)V
.end method

.method public abstract setStreamType(I)V
.end method

.method public abstract setSubTitle(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract updateControllersStatus(Z)V
.end method

.method public abstract updateSeekbar(II)V
.end method
