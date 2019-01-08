.class Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1$1;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1$1;->this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 804
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1$1;->this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1$1;->this$2:Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    iget-object v1, v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method
