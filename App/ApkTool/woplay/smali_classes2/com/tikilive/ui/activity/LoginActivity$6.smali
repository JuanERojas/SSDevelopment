.class Lcom/tikilive/ui/activity/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/LoginActivity;->loginWithFacebook(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/LoginActivity;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 9

    .line 327
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const v1, 0x7f1200c0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/tikilive/ui/activity/LoginActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GraphRequest.GraphJSONObjectCallback failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 332
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v0, p1, p2}, Lcom/tikilive/ui/activity/LoginActivity;->access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    const-string p2, "id"

    .line 334
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "email"

    .line 335
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "name"

    .line 336
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 339
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 340
    iget-object p2, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12018e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 341
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    invoke-static {v0, p1, p2}, Lcom/tikilive/ui/activity/LoginActivity;->access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x20

    .line 343
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 344
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const-string v1, ""

    const-string v2, ""

    const-string v5, ""

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-le p2, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 353
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 357
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    iget-object p2, p0, Lcom/tikilive/ui/activity/LoginActivity$6;->this$0:Lcom/tikilive/ui/activity/LoginActivity;

    iget-object v2, p2, Lcom/tikilive/ui/activity/LoginActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v7, Lcom/tikilive/ui/activity/LoginActivity$6$1;

    invoke-direct {v7, p0, p1, v4}, Lcom/tikilive/ui/activity/LoginActivity$6$1;-><init>(Lcom/tikilive/ui/activity/LoginActivity$6;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/tikilive/ui/activity/LoginActivity$6$2;

    invoke-direct {v8, p0}, Lcom/tikilive/ui/activity/LoginActivity$6$2;-><init>(Lcom/tikilive/ui/activity/LoginActivity$6;)V

    invoke-virtual/range {v2 .. v8}, Lcom/tikilive/ui/backend/Api;->authenticateFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_1
    return-void
.end method
