.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity;->loadSpeedTestSettings()V
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
.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "status"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const-string v0, "download_url"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expected_byte_size"

    .line 95
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "location"

    .line 98
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "isp"

    .line 99
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "isp"

    .line 100
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const v3, 0x7f1201ff

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "grades"

    .line 105
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "grades"

    .line 106
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 107
    iget-object v3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const-string v4, "slow"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$002(Lcom/tikilive/ui/speedtest/SpeedTestActivity;J)J

    .line 108
    iget-object v3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const-string v4, "average"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$102(Lcom/tikilive/ui/speedtest/SpeedTestActivity;J)J

    goto :goto_1

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const-wide/32 v3, 0x2dc6c0

    invoke-static {p1, v3, v4}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$002(Lcom/tikilive/ui/speedtest/SpeedTestActivity;J)J

    .line 111
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const-wide/32 v3, 0x3d0900

    invoke-static {p1, v3, v4}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$102(Lcom/tikilive/ui/speedtest/SpeedTestActivity;J)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_1
    :try_start_1
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v3, Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;

    iget-object v4, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/net/URL;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 122
    invoke-static {v0, v1, v2}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    move-result-object v0

    const v1, 0x7f0a0111

    .line 123
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    .line 128
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 129
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {v0, v1, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 133
    invoke-static {}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    .line 136
    invoke-virtual {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    .line 137
    invoke-virtual {v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p1, v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
