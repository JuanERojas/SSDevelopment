.class Landroid/support/v17/leanback/app/BrowseSupportFragment$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->swapToMainFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

.field final synthetic val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 0

    .line 1546
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1551
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1552
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 1553
    sget p2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p2

    .line 1554
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eq p2, v0, :cond_0

    .line 1555
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
