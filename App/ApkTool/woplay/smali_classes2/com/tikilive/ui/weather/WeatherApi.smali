.class public Lcom/tikilive/ui/weather/WeatherApi;
.super Ljava/lang/Object;
.source "WeatherApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/weather/WeatherApi$WeatherBaseRequest;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/tikilive/ui/weather/WeatherApi;


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sput-object p1, Lcom/tikilive/ui/weather/WeatherApi;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/tikilive/ui/weather/WeatherApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/weather/WeatherApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
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

    .line 48
    invoke-virtual {p0}, Lcom/tikilive/ui/weather/WeatherApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tikilive/ui/weather/WeatherApi;
    .locals 2

    const-class v0, Lcom/tikilive/ui/weather/WeatherApi;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/weather/WeatherApi;->mInstance:Lcom/tikilive/ui/weather/WeatherApi;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/tikilive/ui/weather/WeatherApi;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/weather/WeatherApi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tikilive/ui/weather/WeatherApi;->mInstance:Lcom/tikilive/ui/weather/WeatherApi;

    .line 35
    :cond_0
    sget-object p0, Lcom/tikilive/ui/weather/WeatherApi;->mInstance:Lcom/tikilive/ui/weather/WeatherApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/tikilive/ui/weather/WeatherApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/weather/WeatherApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getWeather(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
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

    .line 53
    new-instance v0, Lcom/tikilive/ui/weather/WeatherApi$WeatherBaseRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tikilive/ui/weather/WeatherApi$WeatherBaseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 61
    invoke-direct {p0, v0}, Lcom/tikilive/ui/weather/WeatherApi;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method
