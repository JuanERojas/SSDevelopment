.class Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;->onLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;

.field final synthetic val$video:Lcom/tikilive/ui/model/Video;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;Lcom/tikilive/ui/model/Video;)V
    .locals 0

    .line 1710
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;->val$video:Lcom/tikilive/ui/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1713
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;->access$4200(Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;)Lcom/tikilive/ui/video/VideoDetailsActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 1714
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;->val$video:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "latest_episodes"

    const/4 v1, 0x1

    .line 1715
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1716
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;->startActivity(Landroid/content/Intent;)V

    .line 1717
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1$1;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;->access$4200(Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;)Lcom/tikilive/ui/video/VideoDetailsActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->overridePendingTransition(II)V

    return-void
.end method
