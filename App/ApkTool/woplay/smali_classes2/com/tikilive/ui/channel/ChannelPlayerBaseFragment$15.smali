.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$15;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setupPlayerTimeout()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$15;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$15;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->handlePlayerTimeout()V

    return-void
.end method