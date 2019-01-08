.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12$1;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12$1;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$12;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$1000(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V

    return-void
.end method
