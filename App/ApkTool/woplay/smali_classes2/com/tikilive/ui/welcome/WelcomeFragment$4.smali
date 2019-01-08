.class Lcom/tikilive/ui/welcome/WelcomeFragment$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->initMainMenu()V
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

    .line 316
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    const/4 p2, 0x1

    .line 320
    new-array p3, p2, [I

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 321
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object p3

    .line 322
    aget p3, p3, v1

    const/4 v2, 0x4

    if-nez p3, :cond_0

    .line 323
    iget-object p3, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p3}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$200(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p3, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p3}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$200(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 328
    :goto_0
    new-array p3, p2, [I

    aput v0, p3, v1

    .line 329
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object p3

    .line 330
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 332
    aget p3, p3, v1

    sub-int/2addr p1, p2

    if-ne p3, p1, :cond_1

    .line 333
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$300(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$300(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
