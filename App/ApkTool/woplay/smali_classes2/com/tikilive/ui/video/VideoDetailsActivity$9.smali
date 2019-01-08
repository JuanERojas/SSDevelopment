.class Lcom/tikilive/ui/video/VideoDetailsActivity$9;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity;->loadBreadcrumbs(IZLcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
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

.field final synthetic val$isNetwork:Z

.field final synthetic val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity;ZLcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-boolean p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->val$isNetwork:Z

    iput-object p3, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 554
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "status"

    .line 558
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const-string v0, "categories"

    .line 560
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 561
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 562
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    .line 563
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    .line 564
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    new-instance v4, Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {v4, v3, v2}, Lcom/tikilive/ui/model/VideoCategory;-><init>(ILjava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2200(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_0
    iget-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->val$isNetwork:Z

    if-eqz p1, :cond_1

    .line 571
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v2, 0x7f12022a

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getBreadcrumbsTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 573
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v3, 0x7f120228

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getBreadcrumbsTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V

    .line 576
    :goto_1
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->val$listener:Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;

    invoke-interface {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;->onLoaded()V

    goto :goto_3

    .line 579
    :cond_2
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

    .line 580
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 581
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 584
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$2100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 587
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$9;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
