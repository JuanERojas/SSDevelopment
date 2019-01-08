.class Lcom/tikilive/ui/channel/ChannelGuideFragment$8;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$8;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$8;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const-class v1, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x102

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "channel_type"

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 310
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$8;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
