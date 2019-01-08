.class Lcom/tikilive/ui/channel/ChannelGuideFragment$6;
.super Lcom/tikilive/ui/listener/OnSwipeTouchListener;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Landroid/content/Context;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeBottom()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$6;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$600(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tikilive/ui/listener/OnChannelSelectedListener;->onChannelSelected(Lcom/tikilive/ui/model/Channel;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
