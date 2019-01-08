.class public Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "CastMediaRouterCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

.field private mRouteAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mRouteAvailable:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    return-void
.end method

.method private isRouteAvailable(Landroid/support/v7/media/MediaRouter;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getMediaRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result p1

    return p1
.end method

.method private notifyRouteAvailabilityChangedIfNeeded(Landroid/support/v7/media/MediaRouter;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->isRouteAvailable(Landroid/support/v7/media/MediaRouter;)Z

    move-result p1

    .line 104
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mRouteAvailable:Z

    if-eq p1, v0, :cond_0

    .line 106
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mRouteAvailable:Z

    .line 107
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mRouteAvailable:Z

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onCastAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isRouteAvailable()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mRouteAvailable:Z

    return v0
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->notifyRouteAvailabilityChangedIfNeeded(Landroid/support/v7/media/MediaRouter;)V

    .line 72
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onCastDeviceDetected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getReconnectionStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 76
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object p1

    const-string v0, "route-id"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteAdded: Attempting to recover a session with info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setReconnectionStatus(I)V

    .line 83
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 84
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteAdded: Attempting to recover a session with device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "Null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_2
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->notifyRouteAvailabilityChangedIfNeeded(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->notifyRouteAvailabilityChangedIfNeeded(Landroid/support/v7/media/MediaRouter;)V

    .line 94
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 47
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteSelected: info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getReconnectionStatus()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setReconnectionStatus(I)V

    .line 51
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->cancelReconnectionTask()V

    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object p1

    const-string v0, "route-id"

    .line 55
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 58
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteSelected: mSelectedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 64
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteUnselected: route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method
