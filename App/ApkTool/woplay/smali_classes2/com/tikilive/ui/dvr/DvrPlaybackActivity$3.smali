.class Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;
.super Ljava/lang/Object;
.source "DvrPlaybackActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->initialiseVideo()V
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
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "status"

    .line 322
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    const-string v1, "dvr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/tikilive/ui/backend/ApiHelper;->getDvrFromJson(Lorg/json/JSONObject;Z)Lcom/tikilive/ui/model/Dvr;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$402(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;Lcom/tikilive/ui/model/Dvr;)Lcom/tikilive/ui/model/Dvr;

    .line 325
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$500(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/model/DvrProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$400(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/model/Dvr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/model/DvrProvider;->setRequest(Lcom/tikilive/ui/model/Dvr;)V

    .line 326
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$600(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    goto :goto_1

    .line 328
    :cond_0
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 332
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

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

    .line 333
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$3;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    :goto_1
    return-void
.end method
