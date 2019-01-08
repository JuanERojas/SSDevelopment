.class Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;
.super Ljava/lang/Object;
.source "DvrItemDetailsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "status"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-string v0, "dvr"

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tikilive/ui/backend/ApiHelper;->getDvrFromJson(Lorg/json/JSONObject;Z)Lcom/tikilive/ui/model/Dvr;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$000(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Lcom/tikilive/ui/model/DvrProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/DvrProvider;->setRequest(Lcom/tikilive/ui/model/Dvr;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$300(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    .line 185
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$400(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    return-void

    .line 169
    :cond_0
    :try_start_1
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

    .line 170
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$100(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Lcom/tikilive/ui/dvr/OnErrorAwareListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tikilive/ui/dvr/OnErrorAwareListener;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$100(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Lcom/tikilive/ui/dvr/OnErrorAwareListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/tikilive/ui/dvr/OnErrorAwareListener;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
