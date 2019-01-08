.class public Lcom/tikilive/ui/backend/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/backend/Api$ApiBaseRequest;
    }
.end annotation


# static fields
.field public static final API_APP_ID:I = 0x4

.field public static final API_APP_KEY:Ljava/lang/String; = "cQP9v96d5KzK6RKA"

.field public static final API_AUTH_KEY_GUEST:Ljava/lang/String; = "<guest>"

.field public static final API_BASE_URL:Ljava/lang/String; = "http://ver.woplay.tv"

.field public static final API_GET_ADS_SETTINGS:Ljava/lang/String; = "Api:getAdsSettings"

.field public static final API_GET_CHANNEL:Ljava/lang/String; = "Api:getChannel"

.field public static final API_GET_CURRENT_EVENT:Ljava/lang/String; = "Api:getCurrentEvent"

.field public static final API_GET_DEVICES:Ljava/lang/String; = "Api:getDevices"

.field public static final API_GET_DVR_FILES:Ljava/lang/String; = "Api:getDvrFiles"

.field public static final API_GET_IN_USE_DEVICES:Ljava/lang/String; = "Api:getInUseDevicesCount"

.field public static final API_GET_ITEMS_PER_CATEGORY:Ljava/lang/String; = "Api:getItemsPerCategory"

.field public static final API_GET_LATEST_VIDEO_EPISODES:Ljava/lang/String; = "Api:getLatestVideoEpisodes"

.field public static final API_GET_OTT_CHANNELS:Ljava/lang/String; = "Api:getOTTChannels"

.field public static final API_GET_PACKAGE:Ljava/lang/String; = "Api:getPackage"

.field public static final API_GET_PACKAGES:Ljava/lang/String; = "Api:getPackages"

.field public static final API_GET_POPULAR_VIDEOS_PER_CATEGORY:Ljava/lang/String; = "Api:getPopularVideosPerCategory"

.field public static final API_GET_POPULAR_VIDEO_CATEGORIES:Ljava/lang/String; = "Api:getPopularVideoCategories"

.field public static final API_GET_POPULAR_VIDEO_EPISODES:Ljava/lang/String; = "Api:getPopularVideoEpisodes"

.field public static final API_GET_POPULAR_VIDEO_NETWORKS:Ljava/lang/String; = "Api:getPopularVideoNetworks"

.field public static final API_GET_RADIO_CHANNEL:Ljava/lang/String; = "Api:getRadioChannel"

.field public static final API_GET_RADIO_CHANNELS:Ljava/lang/String; = "Api:getRadioChannels"

.field public static final API_GET_SOCIAL_BROADCASTS:Ljava/lang/String; = "Api:getSocialBroadcasts"

.field public static final API_GET_SPEED_TEST_SETTINGS:Ljava/lang/String; = "Api:getSpeedTestSettings"

.field public static final API_GET_SUBSCRIPTION_DETAILS:Ljava/lang/String; = "Api:getSubscriptionDetails"

.field public static final API_GET_TOP_LEVEL_VIDEO_CATEGORIES:Ljava/lang/String; = "Api:getTopLevelVideoCategories"

.field public static final API_GET_VIDEO:Ljava/lang/String; = "Api:getVideo"

.field public static final API_GET_VIDEOS_PER_CATEGORY:Ljava/lang/String; = "Api:getVideosPerCategory"

.field public static final API_GET_VIDEO_CATEGORY_PARENTS:Ljava/lang/String; = "Api:getVideoCategoryParents"

.field public static final API_GET_VIDEO_NETWORKS_ROOT:Ljava/lang/String; = "Api:getVideoNetworksRoot"

.field public static final API_PREFERENCES_APP_ID:Ljava/lang/String; = "apiAppId"

.field public static final API_PREFERENCES_APP_KEY:Ljava/lang/String; = "ApiAppKey"

.field public static final API_PREFERENCES_AUTH_KEY:Ljava/lang/String; = "apiAuthKey"

.field public static final API_PREFERENCES_BASE_URL:Ljava/lang/String; = "apiBaseUrl"

.field public static final API_PREFERENCES_FILE:Ljava/lang/String; = "ApiPreferences"

.field public static final API_PREFERENCES_PROFILE_IMAGE:Ljava/lang/String; = "profile_image"

.field public static final API_PREFERENCES_USERNAME:Ljava/lang/String; = "username"

.field public static final API_SEARCH_VIDEOS:Ljava/lang/String; = "Api:searchVideos"

.field public static final API_USERNAME_GUEST:Ljava/lang/String; = "Guest"

.field private static final PRIMARY_DEVICE_SECRET_KEY_AMAZON:Ljava/lang/String; = "PmtUM7UEyVvDHVNB9AKHYEXzntPgPkgv"

.field private static final PRIMARY_DEVICE_SECRET_KEY_GOOGLE_PLAY:Ljava/lang/String; = "kjBE3nY4275U6ZVE9qW5RcVxPzxcnCWE"

.field private static final PRIMARY_DEVICE_SECRET_KEY_STB:Ljava/lang/String; = "zM588HSKEZGDu69s7p5hG7u9sJXUj38a"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.backend.Api"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/tikilive/ui/backend/Api;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sput-object p1, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/backend/Api;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 100
    invoke-virtual {p0}, Lcom/tikilive/ui/backend/Api;->refreshCredentials()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/tikilive/ui/backend/Api;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .line 42
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;
    .locals 2

    const-class v0, Lcom/tikilive/ui/backend/Api;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/backend/Api;->mInstance:Lcom/tikilive/ui/backend/Api;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/tikilive/ui/backend/Api;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/backend/Api;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tikilive/ui/backend/Api;->mInstance:Lcom/tikilive/ui/backend/Api;

    .line 107
    :cond_0
    sget-object p0, Lcom/tikilive/ui/backend/Api;->mInstance:Lcom/tikilive/ui/backend/Api;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public apiAuthKeyChanged(Ljava/lang/String;)Z
    .locals 3

    .line 174
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apiAuthKey"

    const-string v2, "<guest>"

    .line 175
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 601
    new-instance v9, Lcom/tikilive/ui/backend/Api$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/authenticate?suppress_response_codes=true&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<guest>"

    const/4 v2, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/tikilive/ui/backend/Api$4;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v9}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public authenticateFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 631
    new-instance v11, Lcom/tikilive/ui/backend/Api$5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/authenticate/facebook?suppress_response_codes=true&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<guest>"

    const/4 v2, 0x1

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/tikilive/ui/backend/Api$5;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 650
    invoke-direct {v0, v11}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public authenticateTwitter(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 654
    new-instance v9, Lcom/tikilive/ui/backend/Api$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/authenticate/twitter?suppress_response_codes=true&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<guest>"

    const/4 v2, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/tikilive/ui/backend/Api$6;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, v9}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/tikilive/ui/backend/Api;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public createDvr(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 568
    new-instance v7, Lcom/tikilive/ui/backend/Api$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/me/dvr?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/backend/Api$3;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;I)V

    .line 584
    invoke-direct {p0, v7}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public deleteDvr(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 589
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/dvr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 597
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public disconnectDevice(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1060
    new-instance v7, Lcom/tikilive/ui/backend/Api$14;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/me/disconnect-device?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/backend/Api$14;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, v7}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public forgotPassword(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 703
    new-instance v7, Lcom/tikilive/ui/backend/Api$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/forgot-password?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/backend/Api$8;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v7}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getAccountDetails(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 744
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 752
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getAdsSettings(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 854
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/settings/ads?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getAdsSettings"

    .line 861
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 864
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/channels/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?device_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getChannel"

    .line 224
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 227
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getChannels(ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/channels?mobile_streams_only=1&order_by=stb_number&direction=asc&limit=1000&channel_type=all&include_tveverywhere_channels=1&include_sling_channels=1&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&social_broadcasts=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&stb_available=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    new-instance v1, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    if-eqz p1, :cond_1

    const-string p1, "Api:getSocialBroadcasts"

    .line 206
    invoke-virtual {v1, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    goto :goto_1

    :cond_1
    const-string p1, "Api:getOTTChannels"

    .line 208
    invoke-virtual {v1, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 212
    :goto_1
    invoke-direct {p0, v1}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getCurrentEvent(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/channels/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/current-event?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getCurrentEvent"

    .line 269
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 272
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getDevices(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1017
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/devices?order_by=listing&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getDevices"

    .line 1024
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 1027
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getDvr(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 555
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/dvr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?device_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    .line 557
    invoke-static {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 563
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getDvrFiles(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 540
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/dvr?offset=0&limit=999&order_by=start&direction=DESC&status=all&device_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    .line 542
    invoke-static {v2}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getDvrFiles"

    .line 547
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 550
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getInUseDevices(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1032
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/in-use-devices?order_by=updated&direction=DESC&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getInUseDevicesCount"

    .line 1039
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 1042
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getItemsPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/video-categories/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/items?offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&limit="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&order_by=name&direction=ASC&mobile_streams_only=1&lang="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance p2, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p4, p5}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getItemsPerCategory"

    .line 338
    invoke-virtual {p2, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 341
    invoke-direct {p0, p2}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getLatestVideoEpisodes(IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/episodes?offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&limit="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&order_by=created&direction=DESC&mobile_streams_only=1&lang="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    new-instance p2, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, p3, p4}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getLatestVideoEpisodes"

    .line 496
    invoke-virtual {p2, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 499
    invoke-direct {p0, p2}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getLocation(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 841
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/location?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 849
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPackage(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 961
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/plans/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/standard?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPackage"

    .line 968
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 971
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPackages(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 931
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/plans/standard?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPackages"

    .line 938
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 941
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPackagesFilteredByChannelId(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 946
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/plans/standard/channel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPackages"

    .line 953
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 956
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPopularVideoCategories(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/video-categories/popular-categories?offset=0&limit=4&mobile_streams_only=1&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPopularVideoCategories"

    .line 433
    invoke-virtual {v1, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 436
    invoke-direct {p0, v1}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPopularVideoEpisodes(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/episodes?offset=0&limit=8&order_by=popularity&direction=DESC&mobile_streams_only=1&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    new-instance v1, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPopularVideoEpisodes"

    .line 475
    invoke-virtual {v1, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 478
    invoke-direct {p0, v1}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPopularVideoNetworks(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/video-categories/popular-networks?offset=0&limit=8&mobile_streams_only=1&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPopularVideoNetworks"

    .line 454
    invoke-virtual {v1, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 457
    invoke-direct {p0, v1}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getPopularVideosPerCategory(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/video-categories/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/videos?offset=0&limit=8&order_by=popularity&direction=DESC&mobile_streams_only=1&lang="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getPopularVideosPerCategory"

    .line 381
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 384
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getProfileImage()Ljava/lang/String;
    .locals 3

    .line 169
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profile_image"

    const-string v2, ""

    .line 170
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/radios/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getRadioChannel"

    .line 254
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 257
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getRadioChannels(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/radios?&order_by=name&direction=asc&limit=1000&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getRadioChannels"

    .line 239
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 242
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getRecommendations(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 989
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/recommendations?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 997
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tikilive/ui/backend/Api;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/backend/Api;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/backend/Api;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getSettings(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 976
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/settings?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 984
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getSpeedTestSettings(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 869
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/speedtest/settings?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getSpeedTestSettings"

    .line 876
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 879
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getSubscriptionDetails(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1002
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/subscriptions?include_free=1&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getSubscriptionDetails"

    .line 1009
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 1012
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getTopLevelVideoCategories(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/video-categories?order_by=name&direction=ASC&mobile_streams_only=1&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getTopLevelVideoCategories"

    .line 317
    invoke-virtual {v1, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 320
    invoke-direct {p0, v1}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getVideo(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?device_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    .line 506
    invoke-static {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getVideo"

    .line 511
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 514
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getVideoCategoryParents(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/video-categories/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/parents?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getVideoCategoryParents"

    .line 396
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 399
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getVideoNetworksRoot(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 404
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const-string v1, "/video-categories/networks"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getVideoNetworksRoot"

    .line 411
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 414
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public getVideosPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/video-categories/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/videos?offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&limit="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&mobile_streams_only=1&lang="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance p2, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p4, p5}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:getVideosPerCategory"

    .line 360
    invoke-virtual {p2, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 363
    invoke-direct {p0, p2}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public isLoggedIn()Z
    .locals 4

    .line 144
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apiAuthKey"

    const-string v3, "<guest>"

    .line 145
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<guest>"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public loadCurrentEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V
    .locals 3
    .param p2    # Lcom/tikilive/ui/listener/OnCurrentEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 278
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v0

    new-instance v1, Lcom/tikilive/ui/backend/Api$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tikilive/ui/backend/Api$1;-><init>(Lcom/tikilive/ui/backend/Api;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/listener/OnCurrentEventListener;)V

    new-instance v2, Lcom/tikilive/ui/backend/Api$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/tikilive/ui/backend/Api$2;-><init>(Lcom/tikilive/ui/backend/Api;Lcom/tikilive/ui/listener/OnCurrentEventListener;Lcom/tikilive/ui/model/Channel;)V

    .line 277
    invoke-virtual {p0, v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getCurrentEvent(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 133
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apiAuthKey"

    .line 135
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    .line 136
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "profile_image"

    const-string v1, ""

    .line 137
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    invoke-static {p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->access$302(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public logout()V
    .locals 3

    .line 151
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apiAuthKey"

    const-string v2, "<guest>"

    .line 153
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    const-string v2, "Guest"

    .line 154
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "profile_image"

    const-string v2, ""

    .line 155
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "<guest>"

    .line 158
    invoke-static {v0}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->access$302(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public notifyDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 759
    new-instance v12, Lcom/tikilive/ui/backend/Api$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/devices/notify?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/tikilive/ui/backend/Api$10;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, p0

    .line 814
    invoke-direct {v0, v12}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public notifyLogout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 819
    new-instance v7, Lcom/tikilive/ui/backend/Api$11;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/devices/logout?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/backend/Api$11;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 836
    invoke-direct {p0, v7}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public refreshCredentials()V
    .locals 3

    .line 124
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apiBaseUrl"

    const-string v2, "http://ver.woplay.tv"

    .line 126
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "apiAppId"

    const/4 v2, 0x4

    .line 127
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->access$102(I)I

    const-string v1, "ApiAppKey"

    const-string v2, "cQP9v96d5KzK6RKA"

    .line 128
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->access$202(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "apiAuthKey"

    const-string v2, "<guest>"

    .line 129
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->access$302(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 675
    new-instance v12, Lcom/tikilive/ui/backend/Api$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/register?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<guest>"

    const/4 v2, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/tikilive/ui/backend/Api$7;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 699
    invoke-direct {v0, v12}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public removeDevice(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1047
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/me/devices/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1055
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public reportPlaybackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1085
    new-instance v15, Lcom/tikilive/ui/backend/Api$15;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/report/playback-error?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v0 .. v14}, Lcom/tikilive/ui/backend/Api$15;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1111
    invoke-direct {v0, v15}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public resendActivationEmail(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 723
    new-instance v7, Lcom/tikilive/ui/backend/Api$9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/resend-activation-email?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/backend/Api$9;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0, v7}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public searchVideos(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/search/videos?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&limit=100&mobile_streams_only=1&lang="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 525
    new-instance v0, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "Api:searchVideos"

    .line 532
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 535
    invoke-direct {p0, v0}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public sendSpeedTestResult(JJLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 908
    new-instance v10, Lcom/tikilive/ui/backend/Api$13;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/speedtest/send-results?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/tikilive/ui/backend/Api$13;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;JJ)V

    move-object v0, p0

    .line 926
    invoke-direct {v0, v10}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public setProfileImage(Ljava/lang/String;)V
    .locals 3

    .line 162
    sget-object v0, Lcom/tikilive/ui/backend/Api;->mContext:Landroid/content/Context;

    const-string v1, "ApiPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profile_image"

    .line 164
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public storeSpeedTestResult(JJLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 884
    new-instance v11, Lcom/tikilive/ui/backend/Api$12;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/speedtest/results?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide v6, p1

    move-wide v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/tikilive/ui/backend/Api$12;-><init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;JJLjava/lang/String;)V

    move-object v0, p0

    .line 903
    invoke-direct {v0, v11}, Lcom/tikilive/ui/backend/Api;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method
