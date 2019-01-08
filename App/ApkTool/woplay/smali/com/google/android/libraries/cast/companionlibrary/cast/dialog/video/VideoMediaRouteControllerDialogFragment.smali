.class public Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;
.super Landroid/support/v7/app/MediaRouteControllerDialogFragment;
.source "VideoMediaRouteControllerDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;
    .locals 0

    .line 32
    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setVolumeControlEnabled(Z)V

    return-object p2
.end method
