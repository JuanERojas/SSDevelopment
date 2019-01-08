.class Lcom/tikilive/ui/video/VideoDetailsActivity$15;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity;->loadSearchResults(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

.field final synthetic val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 722
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "status"

    .line 727
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "videos"

    .line 730
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 731
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_0

    .line 733
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 734
    invoke-static {v1}, Lcom/tikilive/ui/backend/ApiHelper;->getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    .line 735
    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 737
    :try_start_2
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped loading video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;

    invoke-interface {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;->onLoaded()V

    goto :goto_3

    .line 744
    :cond_1
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

    .line 745
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 746
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 749
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 752
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$15;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
