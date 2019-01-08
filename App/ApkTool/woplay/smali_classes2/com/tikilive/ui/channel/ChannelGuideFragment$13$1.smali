.class Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$13;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 752
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget-object v2, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$channel:Lcom/tikilive/ui/model/Channel;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget-object v3, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$event:Lcom/tikilive/ui/model/Event;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget v4, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$start:I

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget v5, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$end:I

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget v6, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$previousPosition:I

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    iget-object v7, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$eventContainer:Landroid/widget/RelativeLayout;

    invoke-static/range {v1 .. v7}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1300(Lcom/tikilive/ui/channel/ChannelGuideFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V

    return-void
.end method
