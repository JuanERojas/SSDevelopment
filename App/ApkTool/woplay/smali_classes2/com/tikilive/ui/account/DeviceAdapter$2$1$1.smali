.class Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/DeviceAdapter$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter$2$1;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f1200de

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 189
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 191
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->val$current:Lcom/tikilive/ui/model/Device;

    invoke-virtual {p1, v3}, Lcom/tikilive/ui/account/DeviceAdapter;->removeDevice(Lcom/tikilive/ui/model/Device;)V

    .line 192
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    const v3, 0x7f1200d9

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 193
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v3}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x10008000

    .line 194
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v3}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v3}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v4, v4, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v4, v4, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v4}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 200
    invoke-static {}, Lcom/tikilive/ui/account/DeviceAdapter;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v3, v3, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v3}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$1;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v4, v4, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v4, v4, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v4}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120134

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
