.class Lcom/tikilive/ui/video/VideoDetailsActivity$7;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity;->loadVideoDetails(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

.field final synthetic val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 446
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "status"

    .line 452
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    const-string v0, "video"

    .line 454
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 456
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {p1}, Lcom/tikilive/ui/backend/ApiHelper;->getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2002(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/model/Video;)Lcom/tikilive/ui/model/Video;

    .line 457
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "ppv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPpv(Z)V

    const-string v0, "is_premium"

    .line 461
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "has_access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is_premium"

    .line 462
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel_is_premium"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel_is_premium"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/model/Video;->setPremium(Z)V

    .line 464
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v3, "has_access"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tikilive/ui/model/Video;->setAccess(Z)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPremium(Z)V

    .line 467
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/model/Video;->setAccess(Z)V

    .line 471
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->hasAccess()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 475
    :goto_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->isPpv()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "has_ticket"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setTicket(Z)V

    .line 477
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->hasTicket()Z

    move-result v0

    if-nez v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "purchase_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPurchaseUrl(Ljava/lang/String;)V

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setPrice(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->hasTicket()Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_7

    const-string v0, "sources"

    .line 485
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 489
    :cond_5
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/Video;->setUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 487
    :cond_6
    :goto_2
    new-instance p1, Lorg/json/JSONException;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v1, 0x7f1201bc

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 492
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "rating"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setRating(F)V

    .line 493
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/model/Video;->setDuration(J)V

    .line 494
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Video;->setExternalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;

    invoke-interface {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;->onLoaded()V

    return-void

    .line 519
    :cond_8
    :try_start_1
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

    .line 520
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 521
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 526
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$7;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
