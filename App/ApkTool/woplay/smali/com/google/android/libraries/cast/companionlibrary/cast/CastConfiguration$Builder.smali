.class public Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
.super Ljava/lang/Object;
.source "CastConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private mAutoReconnectEnabled:Z

.field private mCaptionPreferenceEnabled:Z

.field private mCastControllerImmersive:Z

.field private mCustomNotificationService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugEnabled:Z

.field private mDisableLaunchOnConnect:Z

.field private mForwardStep:I

.field private mLocale:Ljava/util/Locale;

.field private mLockScreenEnabled:Z

.field private mMediaRouteDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPrevVisibilityPolicy:I

.field private mNotificationActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCompactActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationEnabled:Z

.field private mRelaunchIfRunning:Z

.field private mTargetActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiReconnectEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 214
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNextPrevVisibilityPolicy:I

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCastControllerImmersive:Z

    const/16 v0, 0x1e

    .line 221
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mForwardStep:I

    const-string v0, "applicationId"

    .line 227
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mApplicationId:Ljava/lang/String;

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    .line 229
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationCompactActions:Ljava/util/List;

    .line 230
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNamespaces:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mDebugEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mLockScreenEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/lang/Class;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mTargetActivity:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNamespaces:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/Locale;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mRelaunchIfRunning:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCastControllerImmersive:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)I
    .locals 0

    .line 204
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mForwardStep:I

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/lang/Class;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCustomNotificationService:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mMediaRouteDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mDisableLaunchOnConnect:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mWifiReconnectEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCaptionPreferenceEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mAutoReconnectEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationCompactActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)I
    .locals 0

    .line 204
    iget p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNextPrevVisibilityPolicy:I

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mApplicationId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 391
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNamespaces:Ljava/util/List;

    const-string v1, "namespace"

    invoke-static {p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNotificationAction(IZ)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 341
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationCompactActions:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public build()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;
    .locals 2

    .line 234
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notification was not enabled but some notification actions were configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot add more than 5 notification actions for the expanded view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationCompactActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot add more than 3 compact notification actions for the compact view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCustomNotificationService:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationEnabled:Z

    if-nez v0, :cond_3

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For custom notifications, you should enable notifications first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$1;)V

    return-object v0
.end method

.method public disableLaunchOnConnect()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mDisableLaunchOnConnect:Z

    return-object p0
.end method

.method public enableAutoReconnect()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mAutoReconnectEnabled:Z

    return-object p0
.end method

.method public enableCaptionManagement()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCaptionPreferenceEnabled:Z

    return-object p0
.end method

.method public enableDebug()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mDebugEnabled:Z

    return-object p0
.end method

.method public enableLockScreen()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mLockScreenEnabled:Z

    return-object p0
.end method

.method public enableNotification()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNotificationEnabled:Z

    return-object p0
.end method

.method public enableWifiReconnection()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mWifiReconnectEnabled:Z

    return-object p0
.end method

.method public setCastControllerImmersive(Z)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 0

    .line 411
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCastControllerImmersive:Z

    return-object p0
.end method

.method public setCustomNotificationService(Ljava/lang/Class;)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "customNotificationService"

    .line 442
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mCustomNotificationService:Ljava/lang/Class;

    return-object p0
.end method

.method public setForwardStep(I)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 0

    .line 423
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mForwardStep:I

    return-object p0
.end method

.method public setLaunchOptions(ZLjava/util/Locale;)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1
    .param p2    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "locale"

    .line 400
    invoke-static {p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Locale;

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mLocale:Ljava/util/Locale;

    .line 401
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mRelaunchIfRunning:Z

    return-object p0
.end method

.method public setMediaRouteDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mMediaRouteDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object p0
.end method

.method public setNextPrevVisibilityPolicy(I)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 0

    .line 379
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mNextPrevVisibilityPolicy:I

    return-object p0
.end method

.method public setTargetActivity(Ljava/lang/Class;)Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "targetActivity"

    .line 358
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->mTargetActivity:Ljava/lang/Class;

    return-object p0
.end method
