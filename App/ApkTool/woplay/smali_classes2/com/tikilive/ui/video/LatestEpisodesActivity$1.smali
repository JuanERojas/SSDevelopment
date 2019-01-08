.class Lcom/tikilive/ui/video/LatestEpisodesActivity$1;
.super Ljava/lang/Object;
.source "LatestEpisodesActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/OnLoadedVideosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/LatestEpisodesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/LatestEpisodesActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    .line 63
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->access$000(Lcom/tikilive/ui/video/LatestEpisodesActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->newInstance()Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_2
    :goto_1
    return-void
.end method
