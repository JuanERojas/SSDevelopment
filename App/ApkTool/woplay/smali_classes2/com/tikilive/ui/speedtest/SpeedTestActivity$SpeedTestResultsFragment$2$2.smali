.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$2;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$2;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 591
    invoke-static {}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$2;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    iget-object p1, p1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$2;->this$1:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    iget-object v0, v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
