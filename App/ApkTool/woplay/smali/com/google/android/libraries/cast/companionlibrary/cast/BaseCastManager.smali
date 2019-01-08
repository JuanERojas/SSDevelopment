.class public abstract Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;
.super Ljava/lang/Object;
.source "BaseCastManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/OnFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$DisconnectReason;
    }
.end annotation


# static fields
.field public static final CLEAR_ALL:I = 0x0

.field public static final CLEAR_MEDIA_END:I = 0x8

.field public static final CLEAR_ROUTE:I = 0x1

.field public static final CLEAR_SESSION:I = 0x4

.field public static final CLEAR_WIFI:I = 0x2

.field public static final DISCONNECT_REASON_APP_NOT_RUNNING:I = 0x2

.field public static final DISCONNECT_REASON_CONNECTIVITY:I = 0x1

.field public static final DISCONNECT_REASON_EXPLICIT:I = 0x3

.field public static final DISCONNECT_REASON_OTHER:I = 0x0

.field public static final NO_APPLICATION_ERROR:I = 0x0

.field public static final NO_STATUS_CODE:I = -0x1

.field public static final PREFS_KEY_APPLICATION_ID:Ljava/lang/String; = "application-id"

.field public static final PREFS_KEY_CAST_ACTIVITY_NAME:Ljava/lang/String; = "cast-activity-name"

.field public static final PREFS_KEY_CAST_CUSTOM_DATA_NAMESPACE:Ljava/lang/String; = "cast-custom-data-namespace"

.field public static final PREFS_KEY_MEDIA_END:Ljava/lang/String; = "media-end"

.field public static final PREFS_KEY_ROUTE_ID:Ljava/lang/String; = "route-id"

.field public static final PREFS_KEY_SESSION_ID:Ljava/lang/String; = "session-id"

.field public static final PREFS_KEY_SSID:Ljava/lang/String; = "ssid"

.field public static final RECONNECTION_STATUS_FINALIZED:I = 0x3

.field public static final RECONNECTION_STATUS_INACTIVE:I = 0x4

.field public static final RECONNECTION_STATUS_IN_PROGRESS:I = 0x2

.field public static final RECONNECTION_STATUS_STARTED:I = 0x1

.field private static final SESSION_RECOVERY_TIMEOUT_S:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final UI_VISIBILITY_DELAY_MS:I = 0x12c

.field private static final WHAT_UI_HIDDEN:I = 0x1

.field private static final WHAT_UI_VISIBLE:I

.field private static sCclVersion:Ljava/lang/String;


# instance fields
.field protected mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected mApplicationErrorCode:I

.field protected mApplicationId:Ljava/lang/String;

.field private final mBaseCastConsumers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCapabilities:I

.field protected mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

.field protected mConnectionSuspended:Z

.field protected mContext:Landroid/content/Context;

.field private mDestroyOnDisconnect:Z

.field protected mDeviceName:Ljava/lang/String;

.field protected mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

.field protected mMediaRouter:Landroid/support/v7/media/MediaRouter;

.field protected mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

.field protected mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

.field protected mReconnectionStatus:I

.field protected mReconnectionTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field protected mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

.field protected mSessionId:Ljava/lang/String;

.field private mUiVisibilityHandler:Landroid/os/Handler;

.field protected mUiVisible:Z

.field protected mVisibilityCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDestroyOnDisconnect:Z

    const/4 v1, 0x4

    .line 138
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    .line 148
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationErrorCode:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDestroyOnDisconnect:Z

    const/4 v1, 0x4

    .line 138
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    .line 148
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationErrorCode:I

    .line 190
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    .line 191
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getCapabilities()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCapabilities:I

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFeatureEnabled(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->setDebug(Z)V

    .line 194
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_version:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->sCclVersion:Ljava/lang/String;

    .line 195
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationId:Ljava/lang/String;

    .line 196
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseCastManager is instantiated\nVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->sCclVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nApplication ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    .line 199
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    .line 200
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$1;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisibilityHandler:Landroid/os/Handler;

    .line 201
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string p2, "application-id"

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 204
    new-instance p1, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationId:Ljava/lang/String;

    .line 205
    invoke-static {p2}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 204
    invoke-virtual {p1, p2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 207
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    .line 208
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkGooglePlayServices(Landroid/app/Activity;)Z
    .locals 0

    .line 517
    invoke-static {p0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->checkGooglePlayServices(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static getCclVersion()Ljava/lang/String;
    .locals 1

    .line 1138
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->sCclVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    return-object v0
.end method

.method private static isFlagSet(II)Z
    .locals 0

    if-eqz p0, :cond_1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private launchApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1053
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "launchApp() is called"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getLaunchOptions()Lcom/google/android/gms/cast/LaunchOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->launchApp(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    return-void
.end method

.method private onReconnectionStatusChanged(I)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 699
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onReconnectionStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reconnectSessionIfPossibleInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 5

    .line 735
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "session-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v2, "route-id"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnectSessionIfPossible() Retrieved from preferences: sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", routeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 745
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setReconnectionStatus(I)V

    .line 746
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 749
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to acquire Cast Client for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private setDevice(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 2

    .line 340
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 341
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDeviceName:Ljava/lang/String;

    .line 343
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez p1, :cond_0

    .line 344
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquiring a connection to Google Play services for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getCastOptionBuilder(Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object p1

    .line 346
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    .line 347
    invoke-virtual {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 348
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 349
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 351
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result p1

    if-nez p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addBaseCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully added the new BaseCastConsumer listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final addMediaRouterButton(Landroid/view/Menu;I)Landroid/view/MenuItem;
    .locals 1

    .line 388
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 390
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;

    move-result-object p2

    check-cast p2, Landroid/support/v7/app/MediaRouteActionProvider;

    .line 391
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p2, v0}, Landroid/support/v7/app/MediaRouteActionProvider;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 392
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/app/MediaRouteActionProvider;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    :cond_0
    return-object p1
.end method

.method public final addMediaRouterButton(Landroid/support/v7/app/MediaRouteButton;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 422
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    :cond_0
    return-void
.end method

.method public final adjustDeviceVolume(D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->getDeviceVolume()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    add-double/2addr v0, p1

    .line 640
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setDeviceVolume(D)V

    :cond_0
    return-void
.end method

.method protected final canConsiderSessionRecovery()Z
    .locals 1

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->canConsiderSessionRecovery(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final canConsiderSessionRecovery(Ljava/lang/String;)Z
    .locals 4

    .line 720
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "session-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v2, "route-id"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v3

    .line 729
    :cond_2
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Found session info in the preferences, so proceed with an attempt to reconnect if possible"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v3
.end method

.method public final cancelReconnectionTask()V
    .locals 2

    .line 758
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelling reconnection task"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final checkConnectivity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1118
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    if-eqz v0, :cond_0

    .line 1119
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;-><init>()V

    throw v0

    .line 1121
    :cond_0
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public final clearPersistedConnectionInfo(I)V
    .locals 3

    .line 1158
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPersistedConnectionInfo(): Clearing persisted data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1159
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFlagSet(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v2, "session-id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1162
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFlagSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v2, "route-id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    .line 1165
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFlagSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1166
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v2, "ssid"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x8

    .line 1168
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFlagSet(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1169
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v0, "media-end"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveLongToPreference(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    return-void
.end method

.method public final declared-synchronized decrementUiCounter()V
    .locals 4

    monitor-enter p0

    .line 454
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mVisibilityCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mVisibilityCounter:I

    if-nez v0, :cond_0

    .line 455
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v2, "UI is no longer visible"

    invoke-static {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisible:Z

    .line 458
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisibilityHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisibilityHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 463
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "UI is visible"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 453
    monitor-exit p0

    throw v0
.end method

.method public final disconnect()V
    .locals 2

    .line 540
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDestroyOnDisconnect:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->disconnectDevice(ZZZ)V

    :cond_1
    return-void
.end method

.method public final disconnectDevice(ZZZ)V
    .locals 5

    .line 262
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 267
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDeviceName:Ljava/lang/String;

    const-string v1, "disconnectDevice() Disconnect Reason: "

    .line 271
    iget-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connectivity lost"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApplicationErrorCode:I

    if-eqz v2, :cond_3

    const/16 v4, 0x7d5

    if-eq v2, v4, :cond_2

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Other"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_0

    .line 277
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "App was taken over or not available anymore"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    goto :goto_0

    .line 281
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Intentional disconnect"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 289
    :goto_0
    sget-object v4, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 291
    invoke-interface {v4, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onDisconnectionReason(I)V

    goto :goto_1

    .line 294
    :cond_4
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConnectionSuspended: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    .line 296
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->clearPersistedConnectionInfo(I)V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->stopReconnectionService()V

    .line 300
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    if-eqz p1, :cond_7

    .line 301
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Calling stopApplication"

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->stopApplication()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 305
    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop the application after disconnecting route"

    invoke-static {v2, v3, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDeviceUnselected()V

    .line 308
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_a

    .line 313
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 314
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v2, "Trying to disconnect"

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 317
    :cond_8
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v1, :cond_9

    if-eqz p3, :cond_9

    .line 318
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v2, "disconnectDevice(): Setting route to default"

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 321
    :cond_9
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 323
    :cond_a
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSessionId:Ljava/lang/String;

    .line 324
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onDisconnected(ZZZ)V

    return-void
.end method

.method public getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    return-object v0
.end method

.method protected abstract getCastOptionBuilder(Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceVolume()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 622
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->getVolume(Lcom/google/android/gms/common/api/GoogleApiClient;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 624
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    const-string v2, "getDeviceVolume()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getMediaRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    return-object v0
.end method

.method public final getReconnectionStatus()I
    .locals 1

    .line 684
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    return v0
.end method

.method public final getRouteInfo()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public final declared-synchronized incrementUiCounter()V
    .locals 4

    monitor-enter p0

    .line 434
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mVisibilityCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mVisibilityCounter:I

    .line 435
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisible:Z

    if-nez v0, :cond_0

    .line 436
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisible:Z

    .line 437
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisibilityHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mUiVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 440
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mVisibilityCounter:I

    if-nez v0, :cond_1

    .line 441
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "UI is no longer visible"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "UI is visible"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 433
    monitor-exit p0

    throw v0
.end method

.method public isAnyRouteAvailable()Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;->isRouteAvailable()Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isConnecting()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDeviceMute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 655
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->isMute(Lcom/google/android/gms/common/api/GoogleApiClient;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 657
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    const-string v2, "isDeviceMute()"

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isDeviceOnLocalNetwork()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;

    const-string v1, "No cast device has yet been selected"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->isOnLocalNetwork()Z

    move-result v0

    return v0
.end method

.method public final isFeatureEnabled(I)Z
    .locals 1

    .line 589
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final launchApp(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 991
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "launchApp(applicationId, launchOptions) is called"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 993
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 994
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setReconnectionStatus(I)V

    return-void

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 1000
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    if-ne v0, v1, :cond_2

    .line 1001
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Attempting to join a previously interrupted session..."

    invoke-static {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v0, "session-id"

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1003
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "joinApplication() -> start"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$2;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 1024
    :cond_2
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Launching app"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$3;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V

    .line 1026
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :goto_0
    return-void
.end method

.method protected abstract onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method protected abstract onApplicationConnectionFailed(I)V
.end method

.method protected abstract onApplicationStopFailed(I)V
.end method

.method public final onCastAvailabilityChanged(Z)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 246
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onCastAvailabilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCastDeviceDetected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 365
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onCastDeviceDetected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 893
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected() reached with prior suspension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 895
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 896
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 898
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v0, "onConnected(): App no longer running, so disconnecting"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->disconnect()V

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onConnectivityRecovered()V

    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 906
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    .line 907
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setReconnectionStatus(I)V

    :cond_2
    return-void

    :cond_3
    const/16 p1, 0x8

    .line 912
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFeatureEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 913
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getWifiSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 914
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "ssid"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_4
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 917
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mCastConfiguration:Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->isDisableLaunchOnConnect()Z

    move-result p1

    if-nez p1, :cond_5

    .line 918
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->launchApp()V

    .line 921
    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 922
    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onConnected()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 926
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "requestStatus()"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 951
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFailed() reached, error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDestroyOnDisconnect:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->disconnectDevice(ZZZ)V

    .line 955
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    .line 956
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 961
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 967
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 969
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to show recovery from the recoverable error"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mConnectionSuspended:Z

    .line 977
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionSuspended() was called with cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 979
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onConnectionSuspended(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectivityRecovered()V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 882
    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onConnectivityRecovered()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 227
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 230
    iget-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDestroyOnDisconnect:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->disconnectDevice(ZZZ)V

    goto :goto_1

    .line 232
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setDevice(Lcom/google/android/gms/cast/CastDevice;)V

    :goto_1
    return-void
.end method

.method protected onDeviceUnselected()V
    .locals 0

    return-void
.end method

.method protected onDisconnected(ZZZ)V
    .locals 0

    .line 937
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string p2, "onDisconnected() reached"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 938
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDeviceName:Ljava/lang/String;

    .line 939
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 940
    invoke-interface {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFailed(II)V
    .locals 3

    .line 1128
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed() was called with statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 1130
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onFailed(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 374
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUiVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    if-eqz v0, :cond_1

    .line 475
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onUiVisibilityChanged() addCallback called"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->startCastDiscovery()V

    const/16 v0, 0x20

    .line 477
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->reconnectSessionIfPossible()V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_1

    .line 483
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "onUiVisibilityChanged() removeCallback called"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->stopCastDiscovery()V

    .line 487
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;

    .line 488
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;->onUiVisibilityChanged(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final reconnectSessionIfPossible()V
    .locals 1

    const/16 v0, 0xa

    .line 774
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->reconnectSessionIfPossible(I)V

    return-void
.end method

.method public final reconnectSessionIfPossible(I)V
    .locals 1

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->reconnectSessionIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public reconnectSessionIfPossible(ILjava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 806
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "reconnectSessionIfPossible(%d, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "route-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->canConsiderSessionRecovery(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 812
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 815
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 816
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 824
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->reconnectSessionIfPossibleInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 828
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->setReconnectionStatus(I)V

    .line 832
    :goto_0
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    invoke-virtual {p2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_4

    .line 833
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    invoke-virtual {p2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 837
    :cond_4
    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;I)V

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    .line 868
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_5

    .line 869
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 871
    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionTask:Landroid/os/AsyncTask;

    new-array p2, v4, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    :goto_1
    return-void
.end method

.method public final removeBaseCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mBaseCastConsumers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully removed the existing BaseCastConsumer listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setDeviceMute(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 672
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->setMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 676
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    const-string v1, "setDeviceMute()"

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 674
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;

    const-string v1, "setDeviceMute"

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final setDeviceVolume(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 604
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->setVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 608
    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;

    const-string v0, "setDeviceVolume()"

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 606
    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;

    const-string v0, "Failed to set volume"

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final setReconnectionStatus(I)V
    .locals 1

    .line 691
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    if-eq v0, p1, :cond_0

    .line 692
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    .line 693
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mReconnectionStatus:I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onReconnectionStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public final setRouteInfo(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mRouteInfo:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public final setStopOnDisconnect(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mDestroyOnDisconnect:Z

    return-void
.end method

.method public final startCastDiscovery()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    return-void
.end method

.method protected startReconnectionService(J)V
    .locals 4

    const/16 v0, 0x8

    .line 1178
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1181
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReconnectionService() for media length lef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 1183
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string p2, "media-end"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveLongToPreference(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1184
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1185
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1186
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final stopApplication()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->checkConnectivity()V

    .line 1066
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public final stopCastDiscovery()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mMediaRouterCallback:Lcom/google/android/libraries/cast/companionlibrary/cast/CastMediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    return-void
.end method

.method protected stopReconnectionService()V
    .locals 3

    const/16 v0, 0x8

    .line 1191
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1194
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->TAG:Ljava/lang/String;

    const-string v1, "stopReconnectionService()"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1196
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
