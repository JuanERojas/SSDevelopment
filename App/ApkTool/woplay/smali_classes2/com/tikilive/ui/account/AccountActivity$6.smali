.class Lcom/tikilive/ui/account/AccountActivity$6;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity;->loadSubscriptionDetails(Z)V
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
.field final synthetic this$0:Lcom/tikilive/ui/account/AccountActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 308
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity$6;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 9

    .line 311
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const v0, 0x7f120173

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 315
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_7

    const-string v3, "subscriptions"

    .line 318
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "subscriptions"

    .line 319
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "web"

    .line 320
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "web"

    .line 321
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 322
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 323
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 325
    new-instance v6, Lcom/tikilive/ui/model/Package;

    invoke-direct {v6}, Lcom/tikilive/ui/model/Package;-><init>()V

    const-string v7, "id"

    .line 327
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setId(I)V

    const-string v7, "name"

    .line 328
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setName(Ljava/lang/String;)V

    const-string v7, "price"

    .line 329
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/tikilive/ui/model/Package;->setPrice(D)V

    .line 330
    sget-object v7, Lcom/tikilive/ui/model/Package$Type;->GROUP:Lcom/tikilive/ui/model/Package$Type;

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setType(Lcom/tikilive/ui/model/Package$Type;)V

    const-string v7, "thumb"

    .line 331
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setThumb(Ljava/lang/String;)V

    const-string v7, "meta"

    .line 332
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "meta"

    .line 333
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "recurring"

    .line 334
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setRecurring(Z)V

    const-string v7, "period"

    .line 335
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "day"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    sget-object v7, Lcom/tikilive/ui/model/Package$Period;->DAY:Lcom/tikilive/ui/model/Package$Period;

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setPeriod(Lcom/tikilive/ui/model/Package$Period;)V

    goto :goto_1

    .line 338
    :cond_1
    sget-object v7, Lcom/tikilive/ui/model/Package$Period;->MONTH:Lcom/tikilive/ui/model/Package$Period;

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Package;->setPeriod(Lcom/tikilive/ui/model/Package$Period;)V

    :goto_1
    const-string v7, "length"

    .line 340
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/tikilive/ui/model/Package;->setLength(I)V

    .line 343
    :cond_2
    iget-object v5, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {v5}, Lcom/tikilive/ui/account/AccountActivity;->access$300(Lcom/tikilive/ui/account/AccountActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "premium"

    .line 347
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "premium"

    .line 348
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x0

    .line 349
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 350
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 352
    new-instance v5, Lcom/tikilive/ui/model/Package;

    invoke-direct {v5}, Lcom/tikilive/ui/model/Package;-><init>()V

    const-string v6, "id"

    .line 354
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setId(I)V

    const-string v6, "name"

    .line 355
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setName(Ljava/lang/String;)V

    const-string v6, "price"

    .line 356
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tikilive/ui/model/Package;->setPrice(D)V

    .line 357
    sget-object v6, Lcom/tikilive/ui/model/Package$Type;->CHANNEL:Lcom/tikilive/ui/model/Package$Type;

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setType(Lcom/tikilive/ui/model/Package$Type;)V

    const-string v6, "thumb"

    .line 358
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setThumb(Ljava/lang/String;)V

    const-string v6, "meta"

    .line 359
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "meta"

    .line 360
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "recurring"

    .line 361
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setRecurring(Z)V

    const-string v6, "period"

    .line 362
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "day"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 363
    sget-object v6, Lcom/tikilive/ui/model/Package$Period;->DAY:Lcom/tikilive/ui/model/Package$Period;

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setPeriod(Lcom/tikilive/ui/model/Package$Period;)V

    goto :goto_3

    .line 365
    :cond_4
    sget-object v6, Lcom/tikilive/ui/model/Package$Period;->MONTH:Lcom/tikilive/ui/model/Package$Period;

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/Package;->setPeriod(Lcom/tikilive/ui/model/Package$Period;)V

    :goto_3
    const-string v6, "length"

    .line 367
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/Package;->setLength(I)V

    .line 370
    :cond_5
    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {v4}, Lcom/tikilive/ui/account/AccountActivity;->access$300(Lcom/tikilive/ui/account/AccountActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 375
    :cond_6
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1, v2}, Lcom/tikilive/ui/account/AccountActivity;->access$402(Lcom/tikilive/ui/account/AccountActivity;Z)Z

    .line 376
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/AccountActivity;->access$500(Lcom/tikilive/ui/account/AccountActivity;)V

    goto :goto_5

    .line 379
    :cond_7
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 383
    invoke-static {}, Lcom/tikilive/ui/account/AccountActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$6;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_5
    return-void

    :cond_9
    :goto_6
    return-void
.end method
