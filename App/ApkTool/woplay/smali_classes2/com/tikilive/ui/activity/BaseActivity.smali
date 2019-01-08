.class public abstract Lcom/tikilive/ui/activity/BaseActivity;
.super Lcom/tikilive/ui/activity/ImmersiveActivity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.activity.BaseActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tikilive/ui/activity/ImmersiveActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/activity/BaseActivity;)Lcom/tikilive/ui/backend/Api;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tikilive/ui/activity/BaseActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    return-object p0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 64
    sget-object v0, Lcom/tikilive/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xac

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/activity/ImmersiveActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x14000000

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "INITIAL_FRAGMENT"

    const/16 v0, 0x102

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 4

    .line 22
    invoke-super {p0}, Lcom/tikilive/ui/activity/ImmersiveActivity;->onResume()V

    .line 24
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/activity/BaseActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 25
    instance-of v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tikilive/ui/activity/LoginActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tikilive/ui/activity/RegisterActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    if-nez v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/tikilive/ui/notify/DeviceNotifier;->shouldNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v0

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/tikilive/ui/activity/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/activity/BaseActivity$1;-><init>(Lcom/tikilive/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(JLcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V

    :cond_0
    return-void
.end method
