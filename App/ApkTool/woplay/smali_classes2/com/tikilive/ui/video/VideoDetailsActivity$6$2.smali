.class Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;
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

    .line 257
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$600(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v1, 0x7f120181

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V

    .line 262
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$200(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    new-instance v2, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$1;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadPopularVideos(ILcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const v1, 0x7f120174

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V

    .line 271
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;->this$1:Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;->this$0:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$200(Lcom/tikilive/ui/video/VideoDetailsActivity;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    new-instance v4, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;

    invoke-direct {v4, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6$2$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$6$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    :goto_0
    return-void
.end method
