.class Lcom/tikilive/ui/welcome/WelcomeFragment$35;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->updateWeatherLocation()V
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
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 990
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    .line 993
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "status"

    .line 997
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    const-string v0, "location"

    .line 1001
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "country"

    .line 1002
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "city"

    .line 1003
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "timezone"

    .line 1005
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1008
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/tikilive/ui/helper/Utils;->getCachedTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1009
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1010
    :cond_1
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v2, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1300(Lcom/tikilive/ui/welcome/WelcomeFragment;Ljava/lang/String;)V

    .line 1013
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1014
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    const v3, 0x7f1201de

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tikilive/ui/helper/Utils;->setWeatherUnits(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_3
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    const v3, 0x7f1201e0

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tikilive/ui/helper/Utils;->setWeatherUnits(Landroid/content/Context;Ljava/lang/String;)V

    .line 1018
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tikilive/ui/helper/Utils;->setLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tikilive/ui/helper/Utils;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/helper/Utils;->setLocationIp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tikilive/ui/helper/Utils;->setTimezone(Landroid/content/Context;Ljava/lang/String;)V

    .line 1021
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$35;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/weather/WeatherSyncAdapter;->initializeSyncAdapter(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1024
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method
