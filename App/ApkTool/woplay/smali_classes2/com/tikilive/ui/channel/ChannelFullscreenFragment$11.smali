.class Lcom/tikilive/ui/channel/ChannelFullscreenFragment$11;
.super Ljava/lang/Object;
.source "ChannelFullscreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->showRequiredMembershipScreen(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelFullscreenFragment;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 622
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const-class v1, Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelFullscreenFragment$11;->this$0:Lcom/tikilive/ui/channel/ChannelFullscreenFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ChannelFullscreenFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
