.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$3;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 194
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setupPlayerTimeout()Z

    return-void
.end method
