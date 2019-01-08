.class public Lcom/tikilive/ui/application/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "MyApplication.java"


# static fields
.field public static final DICTIONARY_PREFERENCES_FILE:Ljava/lang/String; = "DictionaryPreferences"

.field public static final MODULE_AFFILIATES:Z = false

.field public static final MODULE_AMAZON:Z = false

.field public static final MODULE_ANNOTATIONS:Z = false

.field public static final MODULE_APPS_LISTING:Z = false

.field public static final MODULE_CAST:Z = true

.field public static final MODULE_DEALER_REFERRAL:Z = false

.field public static final MODULE_DVR:Z = false

.field public static final MODULE_PEER5:Z = false

.field public static final MODULE_RADIO:Z = false

.field public static final MODULE_STB:Z = false

.field public static final TAG_HLS_ADAPTIVE_STREAMING:Ljava/lang/String; = "HLS-Adaptive-Streaming"

.field private static final TWITTER_KEY:Ljava/lang/String; = "keCM8URFsotvANlIqdUPm0Y7c"

.field private static final TWITTER_SECRET:Ljava/lang/String; = "k4ScTkO4D8ODH3i0BfnyukvK290YI4BF0C22DRdkljqCYpoJNI"

.field public static final VIDEO_LIBRARY_NETWORKS_PREFERENCES_FILE:Ljava/lang/String; = "VideoLibraryNetworksPreferences"


# instance fields
.field private expiredPreviewChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private expiredRequiredMembershipTimeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mainMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/welcome/MainMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private permissionUseSearch:Z

.field private playerTimeout:I

.field private recommendations:Lcom/tikilive/ui/backend/Recommendations;

.field private settingsRetrieved:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->expiredPreviewChannels:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->expiredRequiredMembershipTimeouts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/tikilive/ui/application/MyApplication;->settingsRetrieved:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/application/MyApplication;->mainMenuItems:Ljava/util/List;

    .line 78
    iput-boolean v0, p0, Lcom/tikilive/ui/application/MyApplication;->permissionUseSearch:Z

    const v0, 0x5265c0

    .line 79
    iput v0, p0, Lcom/tikilive/ui/application/MyApplication;->playerTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/application/MyApplication;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tikilive/ui/application/MyApplication;->mainMenuItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tikilive/ui/application/MyApplication;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/tikilive/ui/application/MyApplication;->settingsRetrieved:Z

    return p1
.end method


# virtual methods
.method public getExpiredPreviewChannels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->expiredPreviewChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpiredRequiredMembershipTimeouts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->expiredRequiredMembershipTimeouts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMainMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/welcome/MainMenuItem;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->mainMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getPlayerTimeout()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/tikilive/ui/application/MyApplication;->playerTimeout:I

    return v0
.end method

.method public getRecommendations()Lcom/tikilive/ui/backend/Recommendations;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->recommendations:Lcom/tikilive/ui/backend/Recommendations;

    return-object v0
.end method

.method public hasPermissionUseSearch()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/tikilive/ui/application/MyApplication;->permissionUseSearch:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    :try_start_0
    const-string v0, "X.509"

    .line 87
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/tikilive/ui/application/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "certs/DigiCertGlobalRootG2.crt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "ca"

    .line 101
    invoke-virtual {v1, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 104
    invoke-static {v1}, Lcom/tikilive/ui/security/CompositeX509TrustManager;->getTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const-string v1, "TLSv1.2"

    .line 107
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 111
    new-instance v0, Lcom/tikilive/ui/security/TLS12SocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tikilive/ui/security/TLS12SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 112
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 94
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    const-string v2, "Error while setting custom key store for HttpsURLConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 115
    sget-object v1, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    const-string v2, "Error while setting TLS v1.2 for HttpsURLConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_0
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string v1, "keCM8URFsotvANlIqdUPm0Y7c"

    const-string v2, "k4ScTkO4D8ODH3i0BfnyukvK290YI4BF0C22DRdkljqCYpoJNI"

    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 121
    new-array v1, v1, [Lio/fabric/sdk/android/Kit;

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/sdk/android/Twitter;

    invoke-direct {v3, v0}, Lcom/twitter/sdk/android/Twitter;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 123
    invoke-virtual {p0}, Lcom/tikilive/ui/application/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 125
    new-instance v0, Lcom/tikilive/ui/backend/Recommendations;

    invoke-virtual {p0}, Lcom/tikilive/ui/application/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tikilive/ui/backend/Recommendations;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tikilive/ui/application/MyApplication;->recommendations:Lcom/tikilive/ui/backend/Recommendations;

    const v0, 0x7f120194

    .line 127
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/application/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tikilive/ui/helper/Utils;->initVideoCastManager(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
    .locals 3

    .line 139
    iget-boolean v0, p0, Lcom/tikilive/ui/application/MyApplication;->settingsRetrieved:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p1, p0}, Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;->onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/application/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/tikilive/ui/application/MyApplication$1;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/application/MyApplication$1;-><init>(Lcom/tikilive/ui/application/MyApplication;Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V

    new-instance v2, Lcom/tikilive/ui/application/MyApplication$2;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/application/MyApplication$2;-><init>(Lcom/tikilive/ui/application/MyApplication;Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getSettings(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_0
    return-void
.end method

.method public resetSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/tikilive/ui/application/MyApplication;->settingsRetrieved:Z

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/application/MyApplication;->mainMenuItems:Ljava/util/List;

    .line 269
    iput-boolean v0, p0, Lcom/tikilive/ui/application/MyApplication;->permissionUseSearch:Z

    const v0, 0x5265c0

    .line 270
    iput v0, p0, Lcom/tikilive/ui/application/MyApplication;->playerTimeout:I

    return-void
.end method

.method public setPermissionUseSearch(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/tikilive/ui/application/MyApplication;->permissionUseSearch:Z

    return-void
.end method

.method public setPlayerTimeout(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/tikilive/ui/application/MyApplication;->playerTimeout:I

    return-void
.end method
