.class Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;
.super Ljava/lang/Object;
.source "CategoryListingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

.field final synthetic val$category:Lcom/tikilive/ui/model/VideoCategory;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Lcom/tikilive/ui/model/VideoCategory;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;->val$category:Lcom/tikilive/ui/model/VideoCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 436
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "category_id"

    .line 437
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;->val$category:Lcom/tikilive/ui/model/VideoCategory;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/VideoCategory;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->startActivity(Landroid/content/Intent;)V

    .line 439
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-static {p1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->access$600(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Lcom/tikilive/ui/video/CategoryListingActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->overridePendingTransition(II)V

    return-void
.end method
