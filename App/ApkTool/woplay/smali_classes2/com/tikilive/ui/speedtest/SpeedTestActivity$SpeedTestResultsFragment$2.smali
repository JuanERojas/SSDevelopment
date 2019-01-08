.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 564
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object p1

    const v0, 0x7f12020c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    .line 570
    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1600(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    .line 571
    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->access$1700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)J

    move-result-wide v3

    new-instance v5, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;

    invoke-direct {v5, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$1;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;)V

    new-instance v6, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$2;

    invoke-direct {v6, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2$2;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;)V

    .line 569
    invoke-virtual/range {v0 .. v6}, Lcom/tikilive/ui/backend/Api;->sendSpeedTestResult(JJLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
