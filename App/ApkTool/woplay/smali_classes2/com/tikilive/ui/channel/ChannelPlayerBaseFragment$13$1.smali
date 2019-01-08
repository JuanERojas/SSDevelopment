.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13$1;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$13;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mRequestedChannel:Landroid/widget/TextView;

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
