.class public Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteDialogFactory;
.super Landroid/support/v7/app/MediaRouteDialogFactory;
.source "VideoMediaRouteDialogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteDialogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteDialogFactory;->onCreateControllerDialogFragment()Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateControllerDialogFragment()Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;-><init>()V

    return-object v0
.end method
