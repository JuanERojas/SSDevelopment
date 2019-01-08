.class Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;
.super Ljava/lang/Object;
.source "DvrLibraryActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrLibraryActivity;->loadDvrFiles()V
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
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "status"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 75
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->access$000(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)Lcom/tikilive/ui/model/DvrProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/DvrProvider;->getRequests()Ljava/util/Map;

    move-result-object v0

    const-string v1, "results"

    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_1

    .line 79
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    .line 80
    invoke-static {v3, v4}, Lcom/tikilive/ui/backend/ApiHelper;->getDvrFromJson(Lorg/json/JSONObject;Z)Lcom/tikilive/ui/model/Dvr;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v3}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v3

    sget-object v5, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v3, v5}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-static {v3, v4}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->access$102(Lcom/tikilive/ui/dvr/DvrLibraryActivity;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 86
    :try_start_2
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped loading DVR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "usage"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrUsage;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/dvr/DvrUsage;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/dvr/DvrUsage;->setTotal(I)V

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load DVR requests: received HTTPS status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 95
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load DVR requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_2
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->access$300(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V

    return-void
.end method
