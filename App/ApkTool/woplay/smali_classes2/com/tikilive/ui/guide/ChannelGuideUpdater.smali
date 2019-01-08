.class public Lcom/tikilive/ui/guide/ChannelGuideUpdater;
.super Ljava/lang/Object;
.source "ChannelGuideUpdater.java"


# static fields
.field private static final TIMEOUT:I = 0x36ee80

.field private static mInstance:Lcom/tikilive/ui/guide/ChannelGuideUpdater;


# instance fields
.field private mLastSynced:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mLastSynced:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tikilive/ui/guide/ChannelGuideUpdater;
    .locals 2

    const-class v0, Lcom/tikilive/ui/guide/ChannelGuideUpdater;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mInstance:Lcom/tikilive/ui/guide/ChannelGuideUpdater;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/tikilive/ui/guide/ChannelGuideUpdater;

    invoke-direct {v1}, Lcom/tikilive/ui/guide/ChannelGuideUpdater;-><init>()V

    sput-object v1, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mInstance:Lcom/tikilive/ui/guide/ChannelGuideUpdater;

    .line 18
    :cond_0
    sget-object v1, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mInstance:Lcom/tikilive/ui/guide/ChannelGuideUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public shouldSync()Z
    .locals 8

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mLastSynced:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-wide v2, p0, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mLastSynced:J

    const-wide/32 v4, 0x36ee80

    sub-long v6, v0, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public sync(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->mLastSynced:J

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tikilive/ui/guide/ChannelGuideUpdaterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
