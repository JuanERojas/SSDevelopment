.class Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;
.super Ljava/lang/Object;
.source "DvrItemDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->renderDvrItemDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

.field final synthetic val$dvrItem:Lcom/tikilive/ui/model/Dvr;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Lcom/tikilive/ui/model/Dvr;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 296
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "dvr_item"

    .line 297
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
