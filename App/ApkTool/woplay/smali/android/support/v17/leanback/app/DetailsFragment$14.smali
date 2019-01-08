.class Landroid/support/v17/leanback/app/DetailsFragment$14;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsFragment;->setupDpadNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 0

    .line 872
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 875
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 876
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    .line 878
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    .line 879
    invoke-virtual {p2}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->canNavigateToVideoFragment()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    .line 880
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 881
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 882
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/DetailsFragment;->getTitleView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/DetailsFragment;->getTitleView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 883
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsFragment;->getTitleView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 886
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    .line 888
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 889
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p1
.end method
