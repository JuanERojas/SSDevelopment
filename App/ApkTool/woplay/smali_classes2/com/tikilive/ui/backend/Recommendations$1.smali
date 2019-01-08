.class Lcom/tikilive/ui/backend/Recommendations$1;
.super Ljava/lang/Object;
.source "Recommendations.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Recommendations;->retrieveFromServer(Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/backend/Recommendations;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$listener:Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Recommendations;Ljava/util/List;Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tikilive/ui/backend/Recommendations$1;->this$0:Lcom/tikilive/ui/backend/Recommendations;

    iput-object p2, p0, Lcom/tikilive/ui/backend/Recommendations$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/tikilive/ui/backend/Recommendations$1;->val$listener:Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/backend/Recommendations$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "status"

    .line 135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "recommendations"

    .line 138
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 141
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 143
    new-instance v3, Lcom/tikilive/ui/model/Recommendation;

    invoke-direct {v3}, Lcom/tikilive/ui/model/Recommendation;-><init>()V

    const-string v4, "cover_image"

    .line 144
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/model/Recommendation;->setCoverImage(Ljava/lang/String;)V

    const-string v4, "text_large"

    .line 145
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/model/Recommendation;->setTextLarge(Ljava/lang/String;)V

    const-string v4, "text_small"

    .line 146
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/model/Recommendation;->setTextSmall(Ljava/lang/String;)V

    const-string v4, "text_icon"

    .line 147
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/model/Recommendation;->setTextIcon(Ljava/lang/String;)V

    const-string v4, "action_target"

    .line 148
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/model/Recommendation;->setActionTarget(Ljava/lang/String;)V

    const-string v4, "action_id"

    .line 149
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/tikilive/ui/model/Recommendation;->setActionId(I)V

    .line 151
    iget-object v2, p0, Lcom/tikilive/ui/backend/Recommendations$1;->val$items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations$1;->this$0:Lcom/tikilive/ui/backend/Recommendations;

    iget-object v1, p0, Lcom/tikilive/ui/backend/Recommendations$1;->val$items:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tikilive/ui/backend/Recommendations;->access$002(Lcom/tikilive/ui/backend/Recommendations;Ljava/util/List;)Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations$1;->this$0:Lcom/tikilive/ui/backend/Recommendations;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tikilive/ui/backend/Recommendations;->access$102(Lcom/tikilive/ui/backend/Recommendations;J)J

    .line 158
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations$1;->this$0:Lcom/tikilive/ui/backend/Recommendations;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tikilive/ui/backend/Recommendations;->access$202(Lcom/tikilive/ui/backend/Recommendations;I)I

    .line 160
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations$1;->this$0:Lcom/tikilive/ui/backend/Recommendations;

    const-string v1, "rotation_interval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/tikilive/ui/backend/Recommendations;->access$302(Lcom/tikilive/ui/backend/Recommendations;I)I

    .line 162
    iget-object p1, p0, Lcom/tikilive/ui/backend/Recommendations$1;->val$listener:Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;

    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations$1;->this$0:Lcom/tikilive/ui/backend/Recommendations;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;->onRefresh(Lcom/tikilive/ui/backend/Recommendations;)V

    goto :goto_2

    .line 165
    :cond_1
    invoke-static {}, Lcom/tikilive/ui/backend/Recommendations;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 168
    invoke-static {}, Lcom/tikilive/ui/backend/Recommendations;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
