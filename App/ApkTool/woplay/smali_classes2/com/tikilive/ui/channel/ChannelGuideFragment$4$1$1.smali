.class Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1$1;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1$1;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4$1;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$4;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$4;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedChannel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
