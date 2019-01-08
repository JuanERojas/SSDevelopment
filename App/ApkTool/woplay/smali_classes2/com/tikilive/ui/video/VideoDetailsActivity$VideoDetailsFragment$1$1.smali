.class Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;)V
    .locals 0

    .line 1503
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1503
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "status"

    .line 1509
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    :try_start_1
    const-string v0, "channel"

    .line 1519
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "name"

    .line 1520
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1522
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "selected_channel_id"

    .line 1523
    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    iget-object v2, v2, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$3900(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)Lcom/tikilive/ui/model/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Video;->getChannelId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "selected_channel_name"

    .line 1524
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "selected_video_id"

    .line 1525
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$3900(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1526
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1529
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$4000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load channel details from API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1534
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 1535
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_2
    const-string v2, "reason"

    .line 1537
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    move-object p1, v1

    .line 1545
    :goto_0
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$4000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load channel details from API: received HTTP response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_2
    move-exception p1

    .line 1511
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$4000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load channel details from API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
