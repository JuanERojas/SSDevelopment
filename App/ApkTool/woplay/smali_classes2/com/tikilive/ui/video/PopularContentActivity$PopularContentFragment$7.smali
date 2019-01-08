.class Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;
.super Ljava/lang/Object;
.source "PopularContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->setupPopularEpisodes(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

.field final synthetic val$episode:Lcom/tikilive/ui/model/Video;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Lcom/tikilive/ui/model/Video;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;->this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;->val$episode:Lcom/tikilive/ui/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 623
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;->this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 624
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;->val$episode:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "popular_episodes"

    const/4 v1, 0x1

    .line 625
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;->this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
