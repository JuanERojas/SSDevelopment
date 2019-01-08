.class Lcom/tikilive/ui/welcome/WelcomeFragment$7;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->setupMainMenu(Lcom/tikilive/ui/application/MyApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const/4 v0, 0x1

    .line 411
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 412
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$600(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$600(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;

    invoke-direct {v2, p0, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$7$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$7;[I)V

    .line 423
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 429
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$7;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$600(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
