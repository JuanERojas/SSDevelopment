.class public Lcom/tikilive/ui/backend/Ads;
.super Ljava/lang/Object;
.source "Ads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;,
        Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.backend.Ads"

.field private static sInstance:Lcom/tikilive/ui/backend/Ads;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimestamp:J

.field private mTremorAdsAvailable:Z

.field private mTremorAdsSettings:Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tikilive/ui/backend/Ads;->mTremorAdsAvailable:Z

    .line 24
    iput-object p1, p0, Lcom/tikilive/ui/backend/Ads;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    invoke-direct {p1}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/backend/Ads;->mTremorAdsSettings:Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    return-void
.end method

.method static synthetic access$002(Lcom/tikilive/ui/backend/Ads;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/tikilive/ui/backend/Ads;->mTremorAdsAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tikilive/ui/backend/Ads;->mTremorAdsSettings:Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/tikilive/ui/backend/Ads;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doGetSettings(Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V
    .locals 4

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tikilive/ui/backend/Ads;->mTimestamp:J

    .line 46
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    const-string v2, "Api:getAdsSettings"

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcom/tikilive/ui/backend/Ads$1;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/backend/Ads$1;-><init>(Lcom/tikilive/ui/backend/Ads;Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V

    new-instance v2, Lcom/tikilive/ui/backend/Ads$2;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/backend/Ads$2;-><init>(Lcom/tikilive/ui/backend/Ads;Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getAdsSettings(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Ads;
    .locals 2

    const-class v0, Lcom/tikilive/ui/backend/Ads;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/backend/Ads;->sInstance:Lcom/tikilive/ui/backend/Ads;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/tikilive/ui/backend/Ads;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/backend/Ads;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tikilive/ui/backend/Ads;->sInstance:Lcom/tikilive/ui/backend/Ads;

    .line 32
    :cond_0
    sget-object p0, Lcom/tikilive/ui/backend/Ads;->sInstance:Lcom/tikilive/ui/backend/Ads;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getSettings(Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V
    .locals 8

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 37
    iget-wide v2, p0, Lcom/tikilive/ui/backend/Ads;->mTimestamp:J

    const-wide/16 v4, 0x258

    add-long v6, v2, v4

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/tikilive/ui/backend/Ads;->doGetSettings(Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1, p0}, Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;->onAdsSettingsAvailable(Lcom/tikilive/ui/backend/Ads;)V

    :goto_0
    return-void
.end method

.method public getTremorAdsSettings()Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads;->mTremorAdsSettings:Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    return-object v0
.end method

.method public isTremorAdsAvailable()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads;->mTremorAdsAvailable:Z

    return v0
.end method
