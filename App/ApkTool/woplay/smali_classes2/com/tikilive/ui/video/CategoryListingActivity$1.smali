.class Lcom/tikilive/ui/video/CategoryListingActivity$1;
.super Ljava/lang/Object;
.source "CategoryListingActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/CategoryListingActivity;->loadSpecificCategory(I)V
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
.field final synthetic this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

.field final synthetic val$categoryId:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/CategoryListingActivity;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    iput p2, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->val$categoryId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "status"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "categories"

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    .line 119
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    .line 120
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v3, Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {v3, v2, v1}, Lcom/tikilive/ui/model/VideoCategory;-><init>(ILjava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/CategoryListingActivity;->access$000(Lcom/tikilive/ui/video/CategoryListingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    const v2, 0x7f120228

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/video/CategoryListingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/CategoryListingActivity;->getBreadcrumbsTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    const v0, 0x7f120186

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->showLoadingFragment(I)V

    .line 131
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    iget v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->val$categoryId:I

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->access$100(Lcom/tikilive/ui/video/CategoryListingActivity;I)V

    goto :goto_2

    .line 134
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

    .line 135
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 139
    invoke-static {}, Lcom/tikilive/ui/video/CategoryListingActivity;->access$200()Ljava/lang/String;

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

    .line 141
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$1;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
