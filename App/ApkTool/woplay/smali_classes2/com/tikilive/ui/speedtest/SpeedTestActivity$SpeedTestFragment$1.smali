.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 241
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    new-instance v1, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    iget-object v2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    iget-object v3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v3}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$600(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;I)V

    invoke-static {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$502(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    .line 243
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$500(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$800(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$800(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    const v0, 0x7f120205

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    const v1, 0x7f120209

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$900(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
