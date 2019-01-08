.class Lcom/tikilive/ui/channel/ChannelGuideFragment$10;
.super Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;
.source "ChannelGuideFragment.java"


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
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Landroid/content/Context;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeLeft()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->loadNextInterval()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipeRight()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->loadPreviousInterval()Z

    const/4 v0, 0x1

    return v0
.end method
