.class public Lcom/tikilive/ui/welcome/WelcomeActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.welcome.WelcomeActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mConnectingToNetworkTimer:Ljava/util/Timer;

.field private mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNetworkDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mIsNetworkDisconnected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/welcome/WelcomeActivity;)Lcom/tikilive/ui/backend/Api;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/tikilive/ui/welcome/WelcomeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/welcome/WelcomeActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mIsNetworkDisconnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/welcome/WelcomeActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mIsNetworkDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/welcome/WelcomeActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->cancelConnectingToNetworkTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/tikilive/ui/welcome/WelcomeActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->showConnectingToNetwork()V

    return-void
.end method

.method private cancelConnectingToNetworkTimer()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectingToNetworkTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectingToNetworkTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 174
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectingToNetworkTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectingToNetworkTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private setupAutoUpdater()V
    .locals 4

    const-string v0, "http://ver.woplay.tv/api/4/android-stb/update"

    .line 200
    new-instance v1, Lcom/github/snowdream/android/app/UpdateManager;

    invoke-direct {v1, p0}, Lcom/github/snowdream/android/app/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v2, Lcom/github/snowdream/android/app/UpdateOptions$Builder;

    invoke-direct {v2, p0}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUrl(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateOptions$Builder;

    move-result-object v0

    sget-object v2, Lcom/github/snowdream/android/app/UpdateFormat;->JSON:Lcom/github/snowdream/android/app/UpdateFormat;

    .line 204
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updateFormat(Lcom/github/snowdream/android/app/UpdateFormat;)Lcom/github/snowdream/android/app/UpdateOptions$Builder;

    move-result-object v0

    new-instance v2, Lcom/github/snowdream/android/app/UpdatePeriod;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/github/snowdream/android/app/UpdatePeriod;-><init>(I)V

    .line 205
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updatePeriod(Lcom/github/snowdream/android/app/UpdatePeriod;)Lcom/github/snowdream/android/app/UpdateOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 206
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkPackageName(Z)Lcom/github/snowdream/android/app/UpdateOptions$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->build()Lcom/github/snowdream/android/app/UpdateOptions;

    move-result-object v0

    .line 208
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity;Lcom/tikilive/ui/welcome/WelcomeActivity$1;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/github/snowdream/android/app/UpdateManager;->check(Landroid/content/Context;Lcom/github/snowdream/android/app/UpdateOptions;Lcom/github/snowdream/android/app/AbstractUpdateListener;)V

    return-void
.end method

.method private showConnectingToNetwork()V
    .locals 4

    .line 180
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->cancelConnectingToNetworkTimer()V

    .line 181
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectingToNetworkTimer:Ljava/util/Timer;

    .line 182
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectingToNetworkTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeActivity$4;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$4;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/tikilive/ui/welcome/ConnectingFragment;->newInstance()Lcom/tikilive/ui/welcome/ConnectingFragment;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 194
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 52
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 163
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->cancelConnectingToNetworkTimer()V

    .line 165
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 62
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 64
    invoke-static {p0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(JLcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V

    .line 83
    new-instance v0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$2;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mConnectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->checkGooglePlayServices(Landroid/content/Context;)Z

    .line 138
    invoke-static {p0}, Lcom/tikilive/ui/helper/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/application/MyApplication;

    .line 140
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeActivity$3;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$3;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/application/MyApplication;->processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;->mIsNetworkDisconnected:Z

    .line 154
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->showConnectingToNetwork()V

    :goto_0
    return-void
.end method
