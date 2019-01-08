.class Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2$1;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2$1;->this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2$1;->this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2$1;->this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2700(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)V

    return-void
.end method
