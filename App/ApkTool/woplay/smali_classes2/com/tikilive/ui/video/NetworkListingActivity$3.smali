.class Lcom/tikilive/ui/video/NetworkListingActivity$3;
.super Ljava/lang/Object;
.source "NetworkListingActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/NetworkListingActivity;->loadSpecificNetworkItems(I)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

.field final synthetic val$categoryId:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/NetworkListingActivity;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    iput p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->val$categoryId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "status"

    .line 161
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    const-string v0, "categories"

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 165
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    .line 166
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    .line 167
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    new-instance v5, Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {v5, v3, v4}, Lcom/tikilive/ui/model/VideoCategory;-><init>(ILjava/lang/String;)V

    const-string v3, "videos"

    .line 170
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "videos"

    .line 171
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/VideoCategory;->setVideoCount(I)V

    :cond_0
    const-string v3, "categories"

    .line 173
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "categories"

    .line 174
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tikilive/ui/model/VideoCategory;->setCategoryCount(I)V

    :cond_1
    const-string v3, "img"

    .line 176
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "img"

    .line 177
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "medium"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tikilive/ui/model/VideoCategory;->setImageUrl(Ljava/lang/String;)V

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/NetworkListingActivity;->access$300(Lcom/tikilive/ui/video/NetworkListingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    const v1, 0x7f120189

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/video/NetworkListingActivity;->showLoadingFragment(I)V

    .line 185
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    iget v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->val$categoryId:I

    iget-object v2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/NetworkListingActivity;->access$300(Lcom/tikilive/ui/video/NetworkListingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x14

    rsub-int/lit8 v2, v2, 0x14

    new-instance v3, Lcom/tikilive/ui/video/NetworkListingActivity$3$1;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/NetworkListingActivity$3$1;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity$3;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/tikilive/ui/video/NetworkListingActivity;->loadSpecificNetworkVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    goto :goto_2

    .line 200
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

    .line 201
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 205
    invoke-static {}, Lcom/tikilive/ui/video/NetworkListingActivity;->access$200()Ljava/lang/String;

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

    .line 207
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/NetworkListingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$3;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/NetworkListingActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
