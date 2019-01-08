.class Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;
.super Ljava/lang/Object;
.source "PopularContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->setupPopularNetworks(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

.field final synthetic val$category:Lcom/tikilive/ui/model/VideoCategory;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Lcom/tikilive/ui/model/VideoCategory;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;->this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;->val$category:Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 564
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;->this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "category_id"

    .line 565
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;->val$category:Lcom/tikilive/ui/model/VideoCategory;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/VideoCategory;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;->this$0:Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
