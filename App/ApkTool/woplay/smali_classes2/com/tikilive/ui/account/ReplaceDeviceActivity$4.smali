.class Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;
.super Ljava/lang/Object;
.source "ReplaceDeviceActivity.java"

# interfaces
.implements Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/ReplaceDeviceActivity;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 184
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const v0, 0x7f1200bf

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 186
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const v1, 0x7f120192

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 177
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
