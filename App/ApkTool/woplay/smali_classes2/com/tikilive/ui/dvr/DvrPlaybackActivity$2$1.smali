.class Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2$1;
.super Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
.source "DvrPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$1:Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2$1;->this$1:Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .line 207
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 208
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2$1;->this$1:Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;

    iget-object p1, p1, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$300(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 204
    check-cast p1, Landroid/support/design/widget/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$2$1;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
