.class public Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;
.source "DataCastManager.java"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;


# instance fields
.field private final mDataConsumers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespaceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;-><init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V

    .line 80
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    .line 81
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    .line 103
    invoke-virtual {p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->getNamespaces()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v0, "A null or empty namespace was ignored."

    invoke-static {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private attachDataChannels()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->checkConnectivity()V

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v1, p0}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private detachDataChannels()V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    :try_start_0
    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 330
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detachDataChannels() Failed to remove namespace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;
    .locals 2

    .line 121
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    if-nez v0, :cond_0

    const-string v0, "No DataCastManager instance was found, did you forget to initialize it?"

    .line 123
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;
    .locals 3

    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    if-nez v1, :cond_1

    .line 89
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v2, "New instance of DataCastManager is created"

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Couldn\'t find the appropriate version of Google Play Services"

    .line 93
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_0
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;-><init>(Landroid/content/Context;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;)V

    sput-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    .line 98
    :cond_1
    sget-object p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->sInstance:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addDataCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->addBaseCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;)V

    .line 424
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully added the new DataCastConsumer listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_0
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was already registered, skipping this step"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addNamespace(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->checkConnectivity()V

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "namespace cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 145
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring to add a namespace that is already added."

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 149
    :try_start_0
    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, p1, p0}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 150
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 153
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v4, "addNamespace(%s)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method protected getCastOptionBuilder(Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mSelectedCastDevice:Lcom/google/android/gms/cast/CastDevice;

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/Cast$CastOptions;->builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    :cond_0
    return-object p1
.end method

.method public onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 254
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationConnected() reached with sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v1, "session-id"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mReconnectionStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    const-string v2, "route-id"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 266
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v1, "Found the correct route during reconnection attempt"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v0, 0x3

    .line 270
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mReconnectionStatus:I

    .line 271
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, p1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    const/4 p1, 0x4

    .line 279
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mReconnectionStatus:I

    return-void

    .line 286
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->attachDataChannels()V

    .line 287
    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mSessionId:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 289
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onApplicationConnected(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    sget-object p2, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string p3, "Failed to attach namespaces"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public onApplicationConnectionFailed(I)V
    .locals 3

    .line 337
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mReconnectionStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x7d5

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    .line 341
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mReconnectionStatus:I

    .line 342
    invoke-virtual {p0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 346
    invoke-interface {v2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onApplicationConnectionFailed(I)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 349
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz p1, :cond_2

    .line 350
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v0, "onApplicationConnectionFailed(): Setting route to default"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onApplicationDisconnected(I)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 358
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onApplicationDisconnected(I)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_1
    const/4 p1, 0x0

    .line 363
    invoke-virtual {p0, p1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onDeviceSelected(Lcom/google/android/gms/cast/CastDevice;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    .line 374
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplicationStatusChanged() reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 376
    invoke-interface {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onApplicationStatusChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 379
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v2, "onApplicationStatusChanged(): Failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onApplicationStopFailed(I)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 387
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onApplicationStopFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectivityRecovered()V
    .locals 3

    .line 394
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->attachDataChannels()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v2, "onConnectivityRecovered(): Failed to reattach data channels"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    :goto_0
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onConnectivityRecovered()V

    return-void
.end method

.method protected onDeviceUnselected()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->detachDataChannels()V

    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 404
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageSendFailed(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;

    .line 410
    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;->onMessageSendFailed(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeDataCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/DataCastConsumer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->removeBaseCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/BaseCastConsumer;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mDataConsumers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeNamespace(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->checkConnectivity()V

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "namespace cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring to remove a namespace that is not registered."

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 177
    :try_start_0
    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mNamespaceList:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 181
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->TAG:Ljava/lang/String;

    const-string v4, "removeNamespace(%s)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->checkConnectivity()V

    .line 199
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "namespace cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p2, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$1;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;)V

    .line 203
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method
