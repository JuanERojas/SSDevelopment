.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2$1;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2$1;->this$2:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel()V

    return-void
.end method
