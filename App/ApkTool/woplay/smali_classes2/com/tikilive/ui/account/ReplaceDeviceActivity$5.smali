.class Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;
.super Ljava/lang/Object;
.source "ReplaceDeviceActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/ReplaceDeviceActivity;->loadDevices()V
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
.field final synthetic this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 9

    .line 223
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120172

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 227
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    const-string v3, "devices"

    .line 230
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "devices"

    .line 231
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 232
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 233
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 235
    new-instance v6, Lcom/tikilive/ui/model/Device;

    invoke-direct {v6}, Lcom/tikilive/ui/model/Device;-><init>()V

    const-string v7, "id"

    .line 237
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setId(Ljava/lang/String;)V

    const-string v7, "name"

    .line 238
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setName(Ljava/lang/String;)V

    const-string v7, "serial_number"

    .line 239
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "serial_number"

    .line 240
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 241
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 242
    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setSerialNumber(Ljava/lang/String;)V

    :cond_1
    const-string v7, "type"

    .line 245
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/Device;->setType(Ljava/lang/String;)V

    const-string v7, "updated"

    .line 246
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/tikilive/ui/model/Device;->setUpdated(I)V

    .line 247
    sget-object v5, Lcom/tikilive/ui/model/Device$UsedStatus;->IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    invoke-virtual {v6, v5}, Lcom/tikilive/ui/model/Device;->setUsedStatus(Lcom/tikilive/ui/model/Device$UsedStatus;)V

    .line 249
    iget-object v5, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-static {v5}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->access$200(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "allowed"

    .line 253
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const-string v4, "allowed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v3, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->access$302(Lcom/tikilive/ui/account/ReplaceDeviceActivity;I)I

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->access$400(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    goto :goto_2

    .line 260
    :cond_4
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iget-object v4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getResources()Landroid/content/res/Resources;

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

    goto :goto_2

    :catch_0
    move-exception p1

    .line 264
    invoke-static {}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getResources()Landroid/content/res/Resources;

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

    :goto_2
    return-void
.end method
