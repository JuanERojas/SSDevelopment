.class public Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;
.super Landroid/app/Service;
.source "ReconnectionService.java"


# static fields
.field private static final EPSILON_MS:J = 0x1f4L

.field private static final RECONNECTION_ATTEMPT_PERIOD_S:I = 0xf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScreenOnOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTerminationHandler:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTerminationRunnable:Ljava/lang/Runnable;

.field private mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnectivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiConnectivity:Z

    .line 65
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 160
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mTerminationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)J
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->getMediaRemainingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->handleTermination()V

    return-void
.end method

.method private clearEndTimer()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mTerminationHandler:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mTerminationHandler:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mTerminationHandler:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private getMediaRemainingTime()J
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object v0

    const-string v1, "media-end"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getLongFromPreference(Ljava/lang/String;J)J

    move-result-wide v0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v0, v2

    return-wide v4
.end method

.method private handleTermination()V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->clearMediaSession()V

    .line 198
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->clearPersistedConnectionInfo(I)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->stopSelf()V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isRemoteStreamLive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 206
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getMediaTimeRemaining()J

    move-result-wide v2
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 209
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to calculate the time left for media due to lack of connectivity"

    invoke-static {v3, v4, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->stopSelf()V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object v2

    const-string v3, "media-end"

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 217
    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveLongToPreference(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    const-string v1, "handleTermination(): resetting the timer"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->setUpEndTimer()V

    :goto_1
    return-void
.end method

.method private setUpEndTimer()V
    .locals 5

    .line 172
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    const-string v1, "setUpEndTimer(): setting up a timer for the end of current media"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->getMediaRemainingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->stopSelf()V

    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->clearEndTimer()V

    .line 179
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mTerminationRunnable:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 180
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mTerminationHandler:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 76
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->reconnectSessionIfPossible()V

    .line 83
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScreenOnOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScreenOnOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 140
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScreenOnOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScreenOnOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mScreenOnOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->clearEndTimer()V

    .line 152
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 69
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand() is called"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->setUpEndTimer()V

    const/4 p1, 0x1

    return p1
.end method

.method public onWifiConnectivityChanged(ZLjava/lang/String;)V
    .locals 3

    .line 124
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI connectivity changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiConnectivity:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiConnectivity:Z

    .line 127
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->startCastDiscovery()V

    .line 129
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->reconnectSessionIfPossible(ILjava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->mWifiConnectivity:Z

    :cond_2
    :goto_1
    return-void
.end method
