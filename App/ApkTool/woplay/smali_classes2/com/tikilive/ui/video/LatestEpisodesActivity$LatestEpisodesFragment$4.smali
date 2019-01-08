.class Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;
.super Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;
.source "LatestEpisodesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

.field final synthetic val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

.field final synthetic val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    iput-object p3, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iput-object p4, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;-><init>(Lcom/tikilive/ui/video/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$500(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$300(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$400(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Lcom/tikilive/ui/video/LatestEpisodesActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;->this$0:Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->access$500(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    new-instance v3, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4$1;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    return-void
.end method
