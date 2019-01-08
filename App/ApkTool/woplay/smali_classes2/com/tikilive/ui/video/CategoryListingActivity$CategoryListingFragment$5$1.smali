.class Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;
.super Ljava/lang/Object;
.source "CategoryListingActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/OnLoadedVideosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->onLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

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

    .line 485
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

    iget-object v0, v0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$800(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

    iget-object v1, v1, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$900(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 486
    invoke-static {}, Lcom/tikilive/ui/video/CategoryListingActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLoadMore was called, but stopped because all data was loaded"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_0
    invoke-static {}, Lcom/tikilive/ui/video/CategoryListingActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadMore was called, loading 20 more items"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    .line 491
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

    iget-object v1, v1, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {v1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$800(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

    iget-object v1, v1, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->val$adapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iget-object v2, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;->this$1:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

    iget-object v2, v2, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;->val$focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v3, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1$1;

    invoke-direct {v3, p0, v0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1$1;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5$1;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
