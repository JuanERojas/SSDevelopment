.class Lcom/tikilive/ui/channel/ChannelGuideFragment$13;
.super Ljava/util/TimerTask;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->channelGuideSelected(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$end:I

.field final synthetic val$event:Lcom/tikilive/ui/model/Event;

.field final synthetic val$eventContainer:Landroid/widget/RelativeLayout;

.field final synthetic val$previousPosition:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$event:Lcom/tikilive/ui/model/Event;

    iput p4, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$start:I

    iput p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$end:I

    iput p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$previousPosition:I

    iput-object p7, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->val$eventContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$13$1;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$13;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
