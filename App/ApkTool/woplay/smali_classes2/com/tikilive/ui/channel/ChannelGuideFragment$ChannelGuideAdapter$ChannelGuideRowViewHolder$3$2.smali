.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$2;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$2;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1339
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$2;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1900(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1340
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$2;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$2000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1341
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$2;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$eventDetails:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1342
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$2;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1802(Lcom/tikilive/ui/channel/ChannelGuideFragment;Z)Z

    return-void
.end method
