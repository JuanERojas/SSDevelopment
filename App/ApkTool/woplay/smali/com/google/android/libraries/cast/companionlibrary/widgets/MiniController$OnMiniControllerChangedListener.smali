.class public interface abstract Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;
.super Ljava/lang/Object;
.source "MiniController.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/OnFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMiniControllerChangedListener"
.end annotation


# virtual methods
.method public abstract onPlayPauseClicked(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation
.end method

.method public abstract onTargetActivityInvoked(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation
.end method

.method public abstract onUpcomingPlayClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V
.end method

.method public abstract onUpcomingStopClicked(Landroid/view/View;Lcom/google/android/gms/cast/MediaQueueItem;)V
.end method
