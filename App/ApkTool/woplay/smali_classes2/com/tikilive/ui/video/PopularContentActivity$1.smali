.class Lcom/tikilive/ui/video/PopularContentActivity$1;
.super Ljava/lang/Object;
.source "PopularContentActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/PopularContentActivity;->loadPopularContent()V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/PopularContentActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/PopularContentActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "status"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "category"

    .line 105
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/PopularContentActivity;->mTabNetworks:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 109
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    new-instance v2, Lcom/tikilive/ui/video/PopularContentActivity$1$1;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/PopularContentActivity$1$1;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$1;)V

    invoke-static {v0, v2}, Lcom/tikilive/ui/video/PopularContentActivity;->access$200(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    iget-object p1, p1, Lcom/tikilive/ui/video/PopularContentActivity;->mTabNetworks:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    new-instance v0, Lcom/tikilive/ui/video/PopularContentActivity$1$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/PopularContentActivity$1$2;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$1;)V

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/PopularContentActivity;->access$200(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    const/4 p1, 0x0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    const-string v2, "VideoLibraryNetworksPreferences"

    invoke-virtual {v0, v2, v1}, Lcom/tikilive/ui/video/PopularContentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "networks_previous_status"

    .line 166
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 170
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

    .line 171
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/PopularContentActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 175
    invoke-static {}, Lcom/tikilive/ui/video/PopularContentActivity;->access$300()Ljava/lang/String;

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

    .line 177
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/PopularContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$1;->this$0:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/PopularContentActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
