.class Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;
.super Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;
.source "VideoDetailsActivity.java"


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

.field final synthetic val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

.field final synthetic val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    iput-object p3, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iput-object p4, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;-><init>(Lcom/tikilive/ui/video/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 5

    .line 1053
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2700(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2400(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2500(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)Lcom/tikilive/ui/video/VideoDetailsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2600(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2700(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    new-instance v4, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;

    invoke-direct {v4, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    return-void
.end method
