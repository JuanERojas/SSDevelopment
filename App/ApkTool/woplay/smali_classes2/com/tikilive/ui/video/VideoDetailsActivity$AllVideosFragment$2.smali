.class Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

.field final synthetic val$video:Lcom/tikilive/ui/model/Video;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;Lcom/tikilive/ui/model/Video;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->val$video:Lcom/tikilive/ui/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1032
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2500(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)Lcom/tikilive/ui/video/VideoDetailsActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 1033
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->val$video:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "category_id"

    .line 1034
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2600(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->startActivity(Landroid/content/Intent;)V

    .line 1036
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$2;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2500(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)Lcom/tikilive/ui/video/VideoDetailsActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->overridePendingTransition(II)V

    return-void
.end method
