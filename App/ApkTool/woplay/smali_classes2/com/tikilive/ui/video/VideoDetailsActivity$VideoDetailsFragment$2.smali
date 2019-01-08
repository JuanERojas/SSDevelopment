.class Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1576
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$3900(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getPurchaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1578
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1580
    :catch_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1201ae

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
