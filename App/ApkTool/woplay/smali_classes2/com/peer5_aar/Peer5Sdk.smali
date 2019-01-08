.class public Lcom/peer5_aar/Peer5Sdk;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/peer5_aar/Peer5Sdk;

.field static appDebugConfig:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/lang/Object;

.field static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/peer5_aar/Peer5Sdk;",
            ">;"
        }
    .end annotation
.end field

.field static isDebuggable:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/peer5_aar/Peer5Sdk;->d:Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/peer5_aar/Peer5Sdk;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/peer5_aar/Peer5Sdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/peer5_aar/Peer5Sdk;->b:Ljava/lang/String;

    new-instance v0, Lcom/peer5_aar/b/e;

    invoke-direct {v0}, Lcom/peer5_aar/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/peer5_aar/b/e;->start()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/peer5_aar/Peer5Sdk;
    .locals 10

    sget-object v0, Lcom/peer5_aar/Peer5Sdk;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/peer5_aar/Peer5Sdk;->e:Ljava/util/Map;

    const-string v2, "[Peer5SdkDefault]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/peer5_aar/Peer5Sdk;->getInstance()Lcom/peer5_aar/Peer5Sdk;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/peer5_aar/Peer5Sdk;->isDebuggable:Z

    const-string v1, "DEBUG"

    invoke-static {p0, v1}, Lcom/peer5_aar/Peer5Sdk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/peer5_aar/Peer5Sdk;->appDebugConfig:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.peer5.ApiKey"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean p0, Lcom/peer5_aar/Peer5Sdk;->isDebuggable:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Default Peer5 is not initialized. apiKey is null!"

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v0

    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sget-object v1, Lcom/peer5_aar/Peer5Sdk;->a:Lcom/peer5_aar/Peer5Sdk;

    if-nez v1, :cond_7

    new-instance v1, Lcom/peer5_aar/Peer5Sdk;

    invoke-direct {v1}, Lcom/peer5_aar/Peer5Sdk;-><init>()V

    sput-object v1, Lcom/peer5_aar/Peer5Sdk;->a:Lcom/peer5_aar/Peer5Sdk;

    sget-object v1, Lcom/peer5_aar/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput-object v5, Lcom/peer5_aar/a;->a:Ljava/lang/String;

    :cond_4
    sget-object v1, Lcom/peer5_aar/Peer5Sdk;->c:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/peer5_aar/Peer5Sdk;->c:Ljava/lang/ref/WeakReference;

    :cond_5
    invoke-static {}, Lcom/peer5_aar/a/a;->a()Lcom/peer5_aar/a/a;

    move-result-object v1

    iput-object p0, v1, Lcom/peer5_aar/a/a;->b:Landroid/content/Context;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_6

    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_6
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    new-instance v5, Lcom/peer5_aar/a/a$1;

    invoke-direct {v5, v1}, Lcom/peer5_aar/a/a$1;-><init>(Lcom/peer5_aar/a/a;)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object p0, Lcom/peer5_aar/a;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/peer5_aar/a/a;->b:Landroid/content/Context;

    const-string v3, "peer5.html"

    invoke-static {v2, v3}, Lcom/peer5_aar/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<apikey>"

    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    const-string v5, "file:///android_asset/"

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, v1, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/peer5_aar/a/a$2;

    invoke-direct {v2, v1}, Lcom/peer5_aar/a/a$2;-><init>(Lcom/peer5_aar/a/a;)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    sget-object p0, Lcom/peer5_aar/Peer5Sdk;->e:Ljava/util/Map;

    const-string v1, "[Peer5SdkDefault]"

    sget-object v2, Lcom/peer5_aar/Peer5Sdk;->a:Lcom/peer5_aar/Peer5Sdk;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/peer5_aar/Peer5Sdk;->getInstance()Lcom/peer5_aar/Peer5Sdk;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catch_1
    sget-boolean p0, Lcom/peer5_aar/Peer5Sdk;->isDebuggable:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Default Peer5 is not initialized in this process. Make sure to add ApiKey to Your manifest"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".BuildConfig"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/peer5_aar/Peer5Sdk;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/peer5_aar/Peer5Sdk;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/peer5_aar/Peer5Sdk;->e:Ljava/util/Map;

    const-string v2, "[Peer5SdkDefault]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/peer5_aar/Peer5Sdk;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default Peer5 is not initialized. Make sure to call Peer5Sdk.initializeApp(Context) first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPeer5Url(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/peer5_aar/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
