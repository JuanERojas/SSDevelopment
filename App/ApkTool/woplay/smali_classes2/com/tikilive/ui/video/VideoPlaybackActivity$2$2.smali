.class Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

.field final synthetic val$selectTrackView:Landroid/widget/CheckedTextView;

.field final synthetic val$track:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$2;Landroid/util/Pair;Landroid/widget/CheckedTextView;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->val$track:Landroid/util/Pair;

    iput-object p3, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->val$selectTrackView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    .line 276
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->val$track:Landroid/util/Pair;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/helper/TextTracksHelper;->enableTextTrack(Landroid/util/Pair;)Z

    .line 277
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->val$selectTrackView:Landroid/widget/CheckedTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 278
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$2;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    return-void
.end method
