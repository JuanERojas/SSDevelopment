.class Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;
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

    .line 1591
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1594
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video"

    .line 1595
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$3900(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1596
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
