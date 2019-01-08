.class Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;
.super Ljava/lang/Object;
.source "TopLevelCategoriesActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->loadTopVideoCategories()V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/TopLevelCategoriesActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "status"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    const-string v0, "categories"

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 90
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 91
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    .line 92
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    new-instance v6, Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {v6, v4, v5}, Lcom/tikilive/ui/model/VideoCategory;-><init>(ILjava/lang/String;)V

    const-string v4, "videos"

    .line 95
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "videos"

    .line 96
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/tikilive/ui/model/VideoCategory;->setVideoCount(I)V

    :cond_0
    const-string v4, "categories"

    .line 98
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "categories"

    .line 99
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/tikilive/ui/model/VideoCategory;->setCategoryCount(I)V

    :cond_1
    const-string v4, "img"

    .line 101
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "img"

    .line 102
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/tikilive/ui/model/VideoCategory;->setImageUrl(Ljava/lang/String;)V

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-static {v3}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->access$000(Lcom/tikilive/ui/video/TopLevelCategoriesActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "network"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mTabNetworks:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    goto :goto_2

    .line 110
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mTabNetworks:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 117
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    const-string v2, "VideoLibraryNetworksPreferences"

    invoke-virtual {v0, v2, v1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "networks_previous_status"

    .line 119
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    invoke-static {}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->newInstance()Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_4

    .line 127
    :cond_6
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

    .line 128
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 132
    invoke-static {}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;->this$0:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method
