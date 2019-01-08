.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 572
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "status"

    .line 576
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 578
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    iget-object p1, p1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object p1

    const v1, 0x7f120217

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    iget-object v1, v1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "reason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 583
    invoke-static {}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    iget-object p1, p1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    iget-object v1, v1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
