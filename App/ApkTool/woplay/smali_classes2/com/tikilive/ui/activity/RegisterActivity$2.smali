.class Lcom/tikilive/ui/activity/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/RegisterActivity;->register(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/RegisterActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    .line 121
    invoke-static {}, Lcom/tikilive/ui/activity/RegisterActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "status"

    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    const v1, 0x7f1201ef

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x190

    if-ne v0, v1, :cond_5

    .line 129
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "errors"

    .line 130
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "username"

    .line 131
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->access$200(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "username"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$200(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_1
    const-string v0, "email"

    .line 134
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->access$300(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "email"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$300(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_2
    const-string v0, "password"

    .line 137
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->access$000(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$000(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_3
    const-string v0, "affiliate_id"

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->access$400(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "affiliate_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$400(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_4
    const-string v0, "referral_id"

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 144
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->access$500(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "referral_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$500(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 148
    :cond_5
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

    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v1, v0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$600(Lcom/tikilive/ui/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 153
    invoke-static {}, Lcom/tikilive/ui/activity/RegisterActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/tikilive/ui/activity/RegisterActivity$2;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {v1, p1, v0}, Lcom/tikilive/ui/activity/RegisterActivity;->access$600(Lcom/tikilive/ui/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method