.class Lcom/tikilive/ui/video/NetworksActivity$5;
.super Ljava/lang/Object;
.source "NetworksActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/NetworksActivity;->loadSpecificNetworkItems(I)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/NetworksActivity;

.field final synthetic val$categoryId:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/NetworksActivity;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    iput p2, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->val$categoryId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworksActivity$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "status"

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    const-string v0, "categories"

    .line 202
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 204
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    .line 205
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    .line 206
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    new-instance v5, Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {v5, v3, v4}, Lcom/tikilive/ui/model/VideoCategory;-><init>(ILjava/lang/String;)V

    const-string v3, "videos"

    .line 209
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "videos"

    .line 210
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/VideoCategory;->setVideoCount(I)V

    :cond_0
    const-string v3, "categories"

    .line 212
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "categories"

    .line 213
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/VideoCategory;->setCategoryCount(I)V

    :cond_1
    const-string v3, "img"

    .line 215
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "img"

    .line 216
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "medium"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tikilive/ui/model/VideoCategory;->setImageUrl(Ljava/lang/String;)V

    .line 219
    :cond_2
    iget-object v2, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/NetworksActivity;->access$300(Lcom/tikilive/ui/video/NetworksActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    const v1, 0x7f120189

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/video/NetworksActivity;->showLoadingFragment(I)V

    .line 224
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    iget v1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->val$categoryId:I

    iget-object v2, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/NetworksActivity;->access$300(Lcom/tikilive/ui/video/NetworksActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x14

    rsub-int/lit8 v2, v2, 0x14

    new-instance v3, Lcom/tikilive/ui/video/NetworksActivity$5$1;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/NetworksActivity$5$1;-><init>(Lcom/tikilive/ui/video/NetworksActivity$5;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/tikilive/ui/video/NetworksActivity;->loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    goto :goto_2

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    .line 240
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/NetworksActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 244
    invoke-static {}, Lcom/tikilive/ui/video/NetworksActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/NetworksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/NetworksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworksActivity$5;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/NetworksActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method