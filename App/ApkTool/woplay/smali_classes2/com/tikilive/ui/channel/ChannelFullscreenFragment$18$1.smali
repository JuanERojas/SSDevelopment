.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18$1;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18$1;->this$1:Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$18;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mRequestedChannel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
