.class public Lcom/tikilive/ui/notify/PlaybackTimer;
.super Ljava/lang/Object;
.source "PlaybackTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.notify.PlaybackTimer"

.field private static mInstance:Lcom/tikilive/ui/notify/PlaybackTimer;


# instance fields
.field private final PERIOD:J

.field private mDeviceNotifier:Lcom/tikilive/ui/notify/DeviceNotifier;

.field private mPreviousTime:J

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    .line 13
    iput-wide v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->PERIOD:J

    .line 21
    new-instance v0, Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-direct {v0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mDeviceNotifier:Lcom/tikilive/ui/notify/DeviceNotifier;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/tikilive/ui/notify/PlaybackTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/notify/PlaybackTimer;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tikilive/ui/notify/PlaybackTimer;->sendNotification()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;
    .locals 2

    const-class v0, Lcom/tikilive/ui/notify/PlaybackTimer;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/notify/PlaybackTimer;->mInstance:Lcom/tikilive/ui/notify/PlaybackTimer;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/tikilive/ui/notify/PlaybackTimer;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/notify/PlaybackTimer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tikilive/ui/notify/PlaybackTimer;->mInstance:Lcom/tikilive/ui/notify/PlaybackTimer;

    .line 28
    :cond_0
    sget-object p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mInstance:Lcom/tikilive/ui/notify/PlaybackTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    throw p0
.end method

.method private sendNotification()V
    .locals 6

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    iget-wide v2, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mPreviousTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    .line 79
    iput-wide v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mPreviousTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mDeviceNotifier:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-virtual {v0, v4, v5}, Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mDeviceNotifier:Lcom/tikilive/ui/notify/DeviceNotifier;

    return-object v0
.end method

.method public start()V
    .locals 7

    .line 38
    sget-object v0, Lcom/tikilive/ui/notify/PlaybackTimer;->TAG:Ljava/lang/String;

    const-string v1, "Playback timer start called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/tikilive/ui/notify/PlaybackTimer;->TAG:Ljava/lang/String;

    const-string v1, "... but timer was already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mPreviousTime:J

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    .line 48
    iget-object v1, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/tikilive/ui/notify/PlaybackTimer$1;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/notify/PlaybackTimer$1;-><init>(Lcom/tikilive/ui/notify/PlaybackTimer;)V

    const-wide/32 v3, 0x927c0

    const-wide/32 v5, 0x927c0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 62
    sget-object v0, Lcom/tikilive/ui/notify/PlaybackTimer;->TAG:Ljava/lang/String;

    const-string v1, "Playback timer stop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/tikilive/ui/notify/PlaybackTimer;->TAG:Ljava/lang/String;

    const-string v1, "... but no timer was previously started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer;->mTimer:Ljava/util/Timer;

    .line 72
    invoke-direct {p0}, Lcom/tikilive/ui/notify/PlaybackTimer;->sendNotification()V

    return-void
.end method
