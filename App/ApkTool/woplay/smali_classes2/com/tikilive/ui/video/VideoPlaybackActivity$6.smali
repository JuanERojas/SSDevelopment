.class Lcom/tikilive/ui/video/VideoPlaybackActivity$6;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->loadVideoDetailsFromServer(I)V
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

    .line 557
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$6;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 560
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$6;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    return-void
.end method
