.class Lcom/tikilive/ui/welcome/NoNetworkFragment$2;
.super Ljava/lang/Object;
.source "NoNetworkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/NoNetworkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/NoNetworkFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment$2;->this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment$2;->this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/NoNetworkFragment;->access$000(Lcom/tikilive/ui/welcome/NoNetworkFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v0, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment$2;->this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/NoNetworkFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
