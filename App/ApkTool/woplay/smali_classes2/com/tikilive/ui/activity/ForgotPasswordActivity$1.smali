.class Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/ForgotPasswordActivity;->sendEmail(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/ForgotPasswordActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "status"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    iget-object p1, p1, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->mEmail:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    const v1, 0x7f12010e

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 72
    :cond_0
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

    .line 73
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-static {v1, v0, p1}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->access$100(Lcom/tikilive/ui/activity/ForgotPasswordActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 77
    invoke-static {}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/tikilive/ui/activity/ForgotPasswordActivity$1;->this$0:Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-static {v1, p1, v0}, Lcom/tikilive/ui/activity/ForgotPasswordActivity;->access$100(Lcom/tikilive/ui/activity/ForgotPasswordActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
