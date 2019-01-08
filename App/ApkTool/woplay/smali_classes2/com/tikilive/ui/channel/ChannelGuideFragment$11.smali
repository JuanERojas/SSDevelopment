.class Lcom/tikilive/ui/channel/ChannelGuideFragment$11;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 390
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 391
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2, p1, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1100(Lcom/tikilive/ui/channel/ChannelGuideFragment;II)V

    :cond_0
    return-void
.end method
