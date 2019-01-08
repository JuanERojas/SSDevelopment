.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

.field final synthetic val$disableView:Landroid/widget/CheckedTextView;

.field final synthetic val$textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;Lcom/tikilive/ui/helper/TextTracksHelper;Landroid/widget/CheckedTextView;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->val$textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->val$disableView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 254
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$800(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V

    .line 255
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->val$textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->disableTextTracks()V

    .line 256
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->access$000(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->val$textTracksHelper:Lcom/tikilive/ui/helper/TextTracksHelper;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->removeTextTrackAutoStatus(Landroid/content/Context;I)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->val$disableView:Landroid/widget/CheckedTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 261
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->updateSubtitleButton()V

    return-void
.end method
