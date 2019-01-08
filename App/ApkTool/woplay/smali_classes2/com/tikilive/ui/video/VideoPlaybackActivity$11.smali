.class Lcom/tikilive/ui/video/VideoPlaybackActivity$11;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->onVideoAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$11;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsSettingsAvailable(Lcom/tikilive/ui/backend/Ads;)V
    .locals 1

    .line 982
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$11;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method
