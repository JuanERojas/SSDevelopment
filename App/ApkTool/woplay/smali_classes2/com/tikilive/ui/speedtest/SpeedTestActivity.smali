.class public Lcom/tikilive/ui/speedtest/SpeedTestActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "SpeedTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;,
        Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;,
        Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.speedtest.SpeedTestActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mGradeAverage:J

.field private mGradeSlow:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/tikilive/ui/speedtest/SpeedTestActivity;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mGradeSlow:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/tikilive/ui/speedtest/SpeedTestActivity;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mGradeAverage:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/speedtest/SpeedTestActivity;JJ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->sendResults(JJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->loadSpeedTest()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadSpeedTest()V
    .locals 3

    const v0, 0x7f12020b

    .line 77
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0111

    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 81
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->loadSpeedTestSettings()V

    return-void
.end method

.method private loadSpeedTestSettings()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V

    new-instance v2, Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getSpeedTestSettings(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private sendResults(JJ)V
    .locals 8

    .line 417
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 420
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tikilive/ui/speedtest/SpeedTestActivity$3;

    invoke-direct {v6, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$3;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V

    new-instance v7, Lcom/tikilive/ui/speedtest/SpeedTestActivity$4;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$4;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V

    move-wide v1, p1

    move-wide v3, p3

    .line 417
    invoke-virtual/range {v0 .. v7}, Lcom/tikilive/ui/backend/Api;->storeSpeedTestResult(JJLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getGradeAverage()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mGradeAverage:J

    return-wide v0
.end method

.method public getGradeSlow()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mGradeSlow:J

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0027

    .line 53
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    if-nez p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->loadSpeedTest()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 65
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getSpeedTestSettings"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 155
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0111

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 161
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 162
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method
