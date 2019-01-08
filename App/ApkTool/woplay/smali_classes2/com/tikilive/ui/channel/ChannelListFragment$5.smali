.class Lcom/tikilive/ui/channel/ChannelListFragment$5;
.super Ljava/lang/Object;
.source "ChannelListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelListFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelListFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$100(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$100(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
