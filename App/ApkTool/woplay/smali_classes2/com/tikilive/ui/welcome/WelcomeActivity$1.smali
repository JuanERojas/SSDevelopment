.class Lcom/tikilive/ui/welcome/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiAuthKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$000(Lcom/tikilive/ui/welcome/WelcomeActivity;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api;->apiAuthKeyChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0, p1, p2}, Lcom/tikilive/ui/helper/Utils;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->recreate()V

    :cond_0
    return-void
.end method

.method public onNoApiAuth()V
    .locals 0

    return-void
.end method
