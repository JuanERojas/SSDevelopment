.class Lcom/tikilive/ui/backend/Ads$1;
.super Ljava/lang/Object;
.source "Ads.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Ads;->doGetSettings(Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/backend/Ads;

.field final synthetic val$listener:Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Ads;Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    iput-object p2, p0, Lcom/tikilive/ui/backend/Ads$1;->val$listener:Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/backend/Ads$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "ads"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "tremor"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tikilive/ui/backend/Ads;->access$002(Lcom/tikilive/ui/backend/Ads;Z)Z

    const-string v0, "tremor"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "options"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ad_code"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-static {v0}, Lcom/tikilive/ui/backend/Ads;->access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    move-result-object v0

    const-string v1, "ad_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->setAdCode(Ljava/lang/String;)V

    :cond_0
    const-string v0, "supply_code"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-static {v0}, Lcom/tikilive/ui/backend/Ads;->access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    move-result-object v0

    const-string v1, "supply_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->setSupplyCode(Ljava/lang/String;)V

    :cond_1
    const-string v0, "video"

    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "video"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "preroll"

    .line 65
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-static {v1}, Lcom/tikilive/ui/backend/Ads;->access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    move-result-object v1

    const-string v2, "preroll"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->setVideoPreRoll(Z)V

    :cond_2
    const-string v1, "midroll"

    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-static {v1}, Lcom/tikilive/ui/backend/Ads;->access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    move-result-object v1

    const-string v2, "midroll"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->setVideoMidRoll(Z)V

    :cond_3
    const-string v1, "postroll"

    .line 71
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-static {v1}, Lcom/tikilive/ui/backend/Ads;->access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    move-result-object v1

    const-string v2, "postroll"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->setVideoPostRoll(Z)V

    :cond_4
    const-string v0, "live"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "live"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "preroll"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-static {v0}, Lcom/tikilive/ui/backend/Ads;->access$100(Lcom/tikilive/ui/backend/Ads;)Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;

    move-result-object v0

    const-string v1, "preroll"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->setLivePreRoll(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-static {}, Lcom/tikilive/ui/backend/Ads;->access$200()Ljava/lang/String;

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

    .line 86
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/backend/Ads$1;->val$listener:Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;

    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$1;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;->onAdsSettingsAvailable(Lcom/tikilive/ui/backend/Ads;)V

    return-void
.end method
