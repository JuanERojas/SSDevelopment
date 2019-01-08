.class Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;
.super Ljava/lang/Object;
.source "PackageDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSelectedChannelId()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "selected_channel_id"

    .line 131
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSelectedChannelId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "selected_channel_name"

    .line 132
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSelectedChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSelectedVideoId()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "selected_video_id"

    .line 135
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSelectedVideoId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
