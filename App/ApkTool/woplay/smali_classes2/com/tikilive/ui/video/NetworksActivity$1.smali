.class Lcom/tikilive/ui/video/NetworksActivity$1;
.super Ljava/lang/Object;
.source "NetworksActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/NetworksActivity;->loadNetworksRoot()V
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


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/NetworksActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworksActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "status"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "category"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/video/NetworksActivity;->access$000(Lcom/tikilive/ui/video/NetworksActivity;I)V

    goto/16 :goto_1

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    const v1, 0x7f1201b6

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/NetworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    const v2, 0x7f1201b5

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/video/NetworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tikilive/ui/video/NetworksActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
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

    .line 104
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v1, v0, p1}, Lcom/tikilive/ui/video/NetworksActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 108
    invoke-static {}, Lcom/tikilive/ui/video/NetworksActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/NetworksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/NetworksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworksActivity$1;->this$0:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/video/NetworksActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
