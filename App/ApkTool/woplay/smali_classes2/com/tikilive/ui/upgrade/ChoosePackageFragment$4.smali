.class Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;
.super Ljava/lang/Object;
.source "ChoosePackageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSelectedChannelId()I

    move-result p1

    const/high16 v0, 0x14000000

    if-lez p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSelectedVideoId()I

    move-result p1

    if-lez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->finish()V

    goto :goto_0

    .line 125
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {v1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "INITIAL_FRAGMENT"

    const/16 v1, 0x103

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {v1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
