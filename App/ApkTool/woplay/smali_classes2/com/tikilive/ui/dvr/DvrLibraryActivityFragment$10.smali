.class Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$10;
.super Ljava/lang/Object;
.source "DvrLibraryActivityFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->reloadCurrentTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$10;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$10;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$400(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$10;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$400(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
