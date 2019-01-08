.class Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;
.super Ljava/lang/Object;
.source "CategoryListingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;->this$0:Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
