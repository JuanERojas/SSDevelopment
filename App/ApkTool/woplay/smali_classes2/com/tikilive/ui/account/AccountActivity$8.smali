.class Lcom/tikilive/ui/account/AccountActivity$8;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity;->loadDevices(Z)V
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

    .line 422
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 422
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity$8;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 9

    .line 425
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const v0, 0x7f120172

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 429
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    const-string v3, "devices"

    .line 432
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "devices"

    .line 433
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 434
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 435
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 437
    new-instance v6, Lcom/tikilive/ui/model/Device;

    invoke-direct {v6}, Lcom/tikilive/ui/model/Device;-><init>()V

    const-string v7, "id"

    .line 439
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setId(Ljava/lang/String;)V

    const-string v7, "name"

    .line 440
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setName(Ljava/lang/String;)V

    const-string v7, "serial_number"

    .line 441
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "serial_number"

    .line 442
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 443
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 444
    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setSerialNumber(Ljava/lang/String;)V

    :cond_1
    const-string v7, "type"

    .line 447
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setType(Ljava/lang/String;)V

    const-string v7, "updated"

    .line 448
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setUpdated(I)V

    const-string v7, "used_status"

    .line 449
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "used_status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "in use"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 450
    sget-object v5, Lcom/tikilive/ui/model/Device$UsedStatus;->IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    invoke-virtual {v6, v5}, Lcom/tikilive/ui/model/Device;->setUsedStatus(Lcom/tikilive/ui/model/Device$UsedStatus;)V

    goto :goto_1

    .line 452
    :cond_2
    sget-object v5, Lcom/tikilive/ui/model/Device$UsedStatus;->NOT_IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    invoke-virtual {v6, v5}, Lcom/tikilive/ui/model/Device;->setUsedStatus(Lcom/tikilive/ui/model/Device$UsedStatus;)V

    .line 455
    :goto_1
    iget-object v5, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {v5}, Lcom/tikilive/ui/account/AccountActivity;->access$600(Lcom/tikilive/ui/account/AccountActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v3, "allowed"

    .line 459
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 460
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    const-string v4, "allowed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v3, p1}, Lcom/tikilive/ui/account/AccountActivity;->access$702(Lcom/tikilive/ui/account/AccountActivity;I)I

    .line 463
    :cond_4
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1, v2}, Lcom/tikilive/ui/account/AccountActivity;->access$802(Lcom/tikilive/ui/account/AccountActivity;Z)Z

    .line 464
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/AccountActivity;->access$900(Lcom/tikilive/ui/account/AccountActivity;)V

    goto :goto_3

    .line 467
    :cond_5
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

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

    goto :goto_3

    :catch_0
    move-exception p1

    .line 471
    invoke-static {}, Lcom/tikilive/ui/account/AccountActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$8;->this$0:Lcom/tikilive/ui/account/AccountActivity;

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

    :goto_3
    return-void

    :cond_7
    :goto_4
    return-void
.end method
