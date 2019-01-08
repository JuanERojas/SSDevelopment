.class Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;
.super Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;
.source "CategoryListingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

.field final synthetic val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

.field final synthetic val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    iput-object p3, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iput-object p4, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/video/EndlessRecyclerOnScrollListener;-><init>(Lcom/tikilive/ui/video/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$600(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Lcom/tikilive/ui/video/CategoryListingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$700(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {v2}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$800(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;)V

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tikilive/ui/video/CategoryListingActivity;->loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    return-void
.end method
