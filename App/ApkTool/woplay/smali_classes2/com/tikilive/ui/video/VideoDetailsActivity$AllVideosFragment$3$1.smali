.class Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/OnLoadedVideosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->onLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;

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

    .line 1059
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    .line 1060
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->access$2700(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;

    iget-object v2, v2, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3;->val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v3, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1$1;

    invoke-direct {v3, p0, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment$3$1;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
