.class Lcom/tikilive/ui/channel/ChannelListFragment$4;
.super Ljava/lang/Object;
.source "ChannelListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 164
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$100(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v0

    long-to-int p1, v0

    .line 168
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/ChannelProvider;->getById(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$200(Lcom/tikilive/ui/channel/ChannelListFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tikilive/ui/listener/OnChannelSelectedListener;->onChannelSelected(Lcom/tikilive/ui/model/Channel;)V

    return-void
.end method
