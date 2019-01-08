.class Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;
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

.field final synthetic val$disableView:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$2;Landroid/widget/CheckedTextView;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;->val$disableView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    .line 257
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->disableTextTracks()V

    .line 258
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;->val$disableView:Landroid/widget/CheckedTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 259
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$2$1;->this$1:Lcom/tikilive/ui/video/VideoPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/video/VideoPlaybackActivity$2;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    return-void
.end method
