.class public Lcom/tikilive/ui/weather/WeatherSyncService;
.super Landroid/app/Service;
.source "WeatherSyncService.java"


# static fields
.field private static final sSyncAdapterLock:Ljava/lang/Object;

.field private static sWeatherSyncAdapter:Lcom/tikilive/ui/weather/WeatherSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tikilive/ui/weather/WeatherSyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 24
    sget-object p1, Lcom/tikilive/ui/weather/WeatherSyncService;->sWeatherSyncAdapter:Lcom/tikilive/ui/weather/WeatherSyncAdapter;

    invoke-virtual {p1}, Lcom/tikilive/ui/weather/WeatherSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "WeatherSyncService"

    const-string v1, "onCreate - WeatherSyncService"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Lcom/tikilive/ui/weather/WeatherSyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/weather/WeatherSyncService;->sWeatherSyncAdapter:Lcom/tikilive/ui/weather/WeatherSyncAdapter;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/tikilive/ui/weather/WeatherSyncAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/weather/WeatherSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tikilive/ui/weather/WeatherSyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/tikilive/ui/weather/WeatherSyncService;->sWeatherSyncAdapter:Lcom/tikilive/ui/weather/WeatherSyncAdapter;

    .line 19
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
