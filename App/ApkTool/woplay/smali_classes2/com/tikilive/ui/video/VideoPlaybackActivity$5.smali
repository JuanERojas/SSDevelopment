.class Lcom/tikilive/ui/video/VideoPlaybackActivity$5;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->loadVideoDetailsFromServer(I)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 486
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "status"

    .line 492
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    const-string v0, "video"

    .line 494
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 496
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/backend/ApiHelper;->getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1402(Lcom/tikilive/ui/video/VideoPlaybackActivity;Lcom/tikilive/ui/model/Video;)Lcom/tikilive/ui/model/Video;

    .line 497
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "ppv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPpv(Z)V

    .line 500
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->isPpv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "has_ticket"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setTicket(Z)V

    .line 502
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->hasTicket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "purchase_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPurchaseUrl(Ljava/lang/String;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPrice(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->hasTicket()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    const-string v0, "sources"

    .line 512
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/Video;->setUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 514
    :cond_3
    :goto_1
    new-instance p1, Lorg/json/JSONException;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const v1, 0x7f1201bc

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "rating"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setRating(F)V

    .line 520
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/model/Video;->setDuration(J)V

    .line 521
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Video;->setExternalUrl(Ljava/lang/String;)V

    .line 545
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    goto :goto_4

    .line 548
    :cond_5
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

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

    .line 549
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 552
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$5;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    :goto_4
    return-void
.end method
