.class Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;
.super Ljava/lang/Object;
.source "NetworkListingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;->onLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;

.field final synthetic val$video:Lcom/tikilive/ui/model/Video;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;Lcom/tikilive/ui/model/Video;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->this$2:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;

    iput-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->val$video:Lcom/tikilive/ui/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 480
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->this$2:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;

    iget-object v0, v0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->access$600(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)Lcom/tikilive/ui/video/NetworkListingActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 481
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->val$video:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "network_id"

    .line 482
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->this$2:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;

    iget-object v1, v1, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;

    iget-object v1, v1, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->access$700(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->this$2:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;

    iget-object v0, v0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->access$600(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)Lcom/tikilive/ui/video/NetworkListingActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->startActivity(Landroid/content/Intent;)V

    .line 484
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1$1;->this$2:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;

    iget-object p1, p1, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;

    iget-object p1, p1, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    invoke-static {p1}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->access$600(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)Lcom/tikilive/ui/video/NetworkListingActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/NetworkListingActivity;->overridePendingTransition(II)V

    return-void
.end method
