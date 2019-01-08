.class Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;
.super Ljava/lang/Object;
.source "DeviceNotifiedActivity.java"

# interfaces
.implements Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->logout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/DeviceNotifiedActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;->this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 235
    iget-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;->this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    const v0, 0x7f1200bf

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;->this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;->this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    const v1, 0x7f120192

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;->this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/tikilive/ui/activity/DeviceNotifiedActivity$1;->this$0:Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
