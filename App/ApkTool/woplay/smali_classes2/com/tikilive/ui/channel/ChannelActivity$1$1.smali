.class Lcom/tikilive/ui/channel/ChannelActivity$1$1;
.super Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
.source "ChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelActivity$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity$1;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$1;

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 198
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$1;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$300(Lcom/tikilive/ui/channel/ChannelActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$1;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$400(Lcom/tikilive/ui/channel/ChannelActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 194
    check-cast p1, Landroid/support/design/widget/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelActivity$1$1;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
