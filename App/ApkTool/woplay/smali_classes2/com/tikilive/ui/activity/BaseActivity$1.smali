.class Lcom/tikilive/ui/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/BaseActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/BaseActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiAuthKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/BaseActivity;->access$000(Lcom/tikilive/ui/activity/BaseActivity;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Api;->apiAuthKeyChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-static {v0, p1, p2}, Lcom/tikilive/ui/helper/Utils;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/BaseActivity;->recreate()V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/BaseActivity;->access$000(Lcom/tikilive/ui/activity/BaseActivity;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    const-class v0, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    iget-object p2, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-virtual {p2, p1}, Lcom/tikilive/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    iget-object p1, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/BaseActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onNoApiAuth()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/BaseActivity;->access$000(Lcom/tikilive/ui/activity/BaseActivity;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    const-class v2, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/tikilive/ui/activity/BaseActivity$1;->this$0:Lcom/tikilive/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
