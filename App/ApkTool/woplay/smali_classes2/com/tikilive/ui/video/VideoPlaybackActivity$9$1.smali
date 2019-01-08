.class Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$9;

    iget-object v0, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    new-instance v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1$1;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
