.class Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Lcom/tikilive/ui/helper/Utils$OnLogoutNotified;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/DeviceAdapter$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter$2$2;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 238
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2$2;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1200bf

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 229
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2$2;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2$2;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v0}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120192

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 231
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2$2;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v0}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$2$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2$2;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v0}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
