.class Lcom/tikilive/ui/video/LatestEpisodesActivity$2;
.super Ljava/lang/Object;
.source "LatestEpisodesActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/LatestEpisodesActivity;->loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

.field final synthetic val$listener:Lcom/tikilive/ui/video/OnLoadedVideosListener;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/LatestEpisodesActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    iput p2, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->val$offset:I

    iput-object p3, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->val$listener:Lcom/tikilive/ui/video/OnLoadedVideosListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    const-string v0, "status"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "videos"

    .line 113
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 114
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_1

    .line 116
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 117
    invoke-static {v4}, Lcom/tikilive/ui/backend/ApiHelper;->getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;

    move-result-object v4

    .line 118
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 120
    :try_start_2
    invoke-static {}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped loading video: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->val$offset:I

    if-nez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    const-string v3, "pager"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "total"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->access$202(Lcom/tikilive/ui/video/LatestEpisodesActivity;I)I

    :cond_2
    const-string v1, "network"

    .line 129
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "id"

    .line 130
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_2

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mTabNetworks:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    goto :goto_3

    .line 131
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mTabNetworks:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 138
    :goto_3
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    const-string v3, "VideoLibraryNetworksPreferences"

    invoke-virtual {v1, v3, v2}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "networks_previous_status"

    .line 140
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->val$listener:Lcom/tikilive/ui/video/OnLoadedVideosListener;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/video/OnLoadedVideosListener;->onLoaded(Ljava/util/List;)V

    goto :goto_5

    .line 146
    :cond_5
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

    .line 147
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 151
    invoke-static {}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_7
    :goto_6
    return-void
.end method
