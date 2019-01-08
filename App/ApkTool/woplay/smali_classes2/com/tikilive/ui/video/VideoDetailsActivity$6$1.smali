.class Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity$6;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$600(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v1, 0x7f120183

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V

    .line 233
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$100(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    new-instance v2, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1$1;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadPopularVideos(ILcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v1, 0x7f120175

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V

    .line 242
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$100(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    new-instance v4, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1$2;

    invoke-direct {v4, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$1$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    :goto_0
    return-void
.end method
