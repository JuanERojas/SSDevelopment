.class Lcom/tikilive/ui/activity/LoginActivity$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity$1$1;->success(Lcom/twitter/sdk/android/core/Result;)V
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
.field final synthetic this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

.field final synthetic val$twitterUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity$1$1;Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iput-object p2, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->val$twitterUsername:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "status"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "api_auth_key"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->val$twitterUsername:Ljava/lang/String;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v1, v0, p1}, Lcom/tikilive/ui/helper/Utils;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->resetSettings()V

    .line 120
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    const v1, 0x7f12002c

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    .line 132
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v1, v0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    invoke-static {}, Lcom/tikilive/ui/activity/LoginActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object p1, p1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v0, v0, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity$1$1$1;->this$2:Lcom/tikilive/ui/activity/LoginActivity$1$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1$1;->this$1:Lcom/tikilive/ui/activity/LoginActivity$1;

    iget-object v1, v1, Lcom/tikilive/ui/activity/LoginActivity$1;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v1, p1, v0}, Lcom/tikilive/ui/activity/LoginActivity;->access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
