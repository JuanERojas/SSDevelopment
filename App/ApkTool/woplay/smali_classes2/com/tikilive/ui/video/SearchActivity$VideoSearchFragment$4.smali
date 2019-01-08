.class Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->performSearch()V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

.field final synthetic val$searchQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->val$searchQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "status"

    .line 199
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$200(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$300(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Lcom/tikilive/ui/video/VideoLibraryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->clear()V

    const-string v0, "videos"

    .line 204
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 205
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/tikilive/ui/backend/ApiHelper;->getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v2}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$200(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->val$searchQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$400(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 214
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

    .line 215
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object v1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$500(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Lcom/tikilive/ui/video/SearchActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/SearchActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 219
    invoke-static {}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$600()Ljava/lang/String;

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

    .line 221
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$500(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Lcom/tikilive/ui/video/SearchActivity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/SearchActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
