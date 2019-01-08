.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;
.super Ljava/lang/Object;
.source "MediaAuthService.java"


# virtual methods
.method public abstract abortAuthorization(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;)V
.end method

.method public abstract getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
.end method

.method public abstract getPendingMessage()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;
.end method

.method public abstract getTimeout()J
.end method

.method public abstract setMediaAuthListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthListener;)V
.end method

.method public abstract startAuthorization()V
.end method
