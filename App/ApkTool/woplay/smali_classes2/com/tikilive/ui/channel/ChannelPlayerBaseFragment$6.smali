.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

.field final synthetic val$api:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/backend/Api;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$api:Lcom/tikilive/ui/backend/Api;

    iput-object p4, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 363
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const v0, 0x7f1201cd

    :try_start_0
    const-string v1, "status"

    .line 373
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    :try_start_1
    const-string v1, "channel"

    .line 383
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 384
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v2, "live"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/model/Channel;->setLive(Z)V

    const-string v1, "premium"

    .line 385
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v1, "has_subscription"

    .line 387
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 389
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Trying to access a premium channel without a subscription"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "no_subscription_message"

    .line 391
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "no_subscription_message"

    .line 392
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1201e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, -0x1

    const-string v4, "subscription_available_packages"

    .line 397
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "subscription_available_packages"

    .line 398
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    const-string v4, "free_preview"

    .line 400
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 401
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v4, "free_preview"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tikilive/ui/model/Channel;->setFreePreview(Z)V

    .line 402
    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v4, "free_preview_timeout"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tikilive/ui/model/Channel;->setFreePreviewTimeout(I)V

    goto :goto_1

    .line 404
    :cond_3
    iget-object v4, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v4, v2}, Lcom/tikilive/ui/model/Channel;->setFreePreview(Z)V

    .line 405
    iget-object v4, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v4, v2}, Lcom/tikilive/ui/model/Channel;->setFreePreviewTimeout(I)V

    :goto_1
    const-string v2, ""

    const-string v4, "preview_hls_stream"

    .line 408
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "preview_hls_stream"

    .line 409
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    :cond_4
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {p1, v1, v3, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showSubscriptionErrorScreen(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    return-void

    :cond_5
    :try_start_2
    const-string v0, "sources"

    .line 423
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "multicast"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    :try_start_3
    const-string v0, "sources"

    .line 426
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 439
    :goto_2
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/Channel;->setUrl(Ljava/lang/String;)V

    :try_start_4
    const-string v0, "stretching"

    .line 442
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "stretching"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setStretching(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 446
    :catch_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "uniform"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setStretching(Ljava/lang/String;)V

    .line 450
    :cond_6
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$api:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 451
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "membership_required"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setRequiredMembership(Z)V

    .line 452
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "membership_required_timeout"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setRequiredMembershipTimeout(I)V

    .line 453
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "membership_required_message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setRequiredMembershipTitle(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "membership_required_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setRequiredMembershipInfo(Ljava/lang/String;)V

    goto :goto_4

    .line 456
    :cond_7
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/model/Channel;->setRequiredMembership(Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 459
    :catch_2
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/model/Channel;->setRequiredMembership(Z)V

    :goto_4
    :try_start_6
    const-string v0, "cdn"

    .line 463
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 464
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    const-string v1, "cdn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "peering"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Channel;->setPeer5(Z)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 467
    :catch_3
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p1, v2}, Lcom/tikilive/ui/model/Channel;->setPeer5(Z)V

    .line 470
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;

    invoke-static {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$200(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    goto/16 :goto_7

    :catch_4
    move-exception p1

    .line 428
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load channel details from API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    :catch_5
    move-exception p1

    .line 416
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load channel details from API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    .line 474
    :cond_9
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reason"

    .line 475
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_7
    const-string v2, "reason"

    .line 477
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    :cond_a
    move-object p1, v0

    .line 484
    :goto_6
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load channel details from API: received HTTP response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :catch_7
    move-exception p1

    .line 375
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load channel details from API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_8
    return-void
.end method
