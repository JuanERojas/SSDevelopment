.class Lcom/tikilive/ui/channel/ChannelListFragment$1;
.super Ljava/lang/Object;
.source "ChannelListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelListFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelListFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x101

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "channel_type"

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$1;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ChannelListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
