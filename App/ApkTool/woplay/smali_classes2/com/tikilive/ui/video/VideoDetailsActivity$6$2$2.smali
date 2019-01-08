.class Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/OnLoadedVideosListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;

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

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Video;

    .line 275
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$800(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    .line 278
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;->this$2:Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$1200(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    return-void
.end method
