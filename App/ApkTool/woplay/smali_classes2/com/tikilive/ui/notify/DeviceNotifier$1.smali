.class Lcom/tikilive/ui/notify/DeviceNotifier$1;
.super Ljava/lang/Object;
.source "DeviceNotifier.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(JLcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

.field final synthetic val$listener:Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/notify/DeviceNotifier;Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    iput-object p2, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->val$listener:Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "status"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const-string v0, "force_logout"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "force_logout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$000(Lcom/tikilive/ui/notify/DeviceNotifier;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tikilive/ui/helper/Utils;->logout(Landroid/content/Context;Z)V

    .line 76
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$100(Lcom/tikilive/ui/notify/DeviceNotifier;)V

    goto/16 :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->val$listener:Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;

    if-eqz v0, :cond_b

    const-string v0, "autologin"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "autologin"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "api_auth_key"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->val$listener:Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;

    const-string v2, "username"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;->onApiAuthKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->val$listener:Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;

    invoke-interface {p1}, Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;->onNoApiAuth()V

    goto/16 :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->val$listener:Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;

    invoke-interface {p1}, Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;->onNoApiAuth()V

    goto/16 :goto_1

    :cond_3
    const-string v1, "title"

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "reason"

    .line 95
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "reason"

    .line 96
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const/16 v3, 0x193

    if-ne v0, v3, :cond_5

    const-string v4, "Account Locked"

    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 99
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {p1, v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$200(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    const-string v4, "Alcanz\u00f3 el l\u00edmite de dispositivos disponibles"

    .line 100
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 101
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {p1, v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$300(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-ne v0, v3, :cond_7

    const-string v4, "Playback Time Limit"

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    .line 103
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    const-string v1, "context"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "upgrade"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$400(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    if-ne v0, v3, :cond_8

    const-string v4, "Device Disconnected"

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    .line 105
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {p1, v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$500(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-ne v0, v3, :cond_9

    const-string v0, "Forbidden"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 107
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$600(Lcom/tikilive/ui/notify/DeviceNotifier;)V

    goto :goto_1

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier$1;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-static {v0, v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$700(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    invoke-static {}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_a
    const-string v1, "JSONException"

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_1
    return-void
.end method
