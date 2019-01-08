.class Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;
.super Ljava/lang/Object;
.source "LatestEpisodesActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/OnLoadedVideosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->onLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;->this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    .line 290
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;->this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    iget-object v1, v1, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$400(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Lcom/tikilive/ui/video/LatestEpisodesActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;->this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    iget-object v1, v1, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$400(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Lcom/tikilive/ui/video/LatestEpisodesActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;->this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    iget-object v1, v1, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$500(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;->this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    iget-object v1, v1, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iget-object v2, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;->this$1:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    iget-object v2, v2, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v3, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1$1;

    invoke-direct {v3, p0, v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1$1;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    return-void
.end method
