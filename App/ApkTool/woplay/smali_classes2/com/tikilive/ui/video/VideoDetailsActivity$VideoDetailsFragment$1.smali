.class Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;
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

    .line 1498
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1501
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    .line 1502
    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->access$3900(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)Lcom/tikilive/ui/model/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Video;->getChannelId()I

    move-result v0

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;)V

    new-instance v2, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;)V

    .line 1501
    invoke-virtual {p1, v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getChannel(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
