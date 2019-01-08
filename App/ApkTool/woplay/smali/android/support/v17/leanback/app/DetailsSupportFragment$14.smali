.class Landroid/support/v17/leanback/app/DetailsSupportFragment$14;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupDpadNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 0

    .line 867
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 870
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 871
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    .line 873
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    .line 874
    invoke-virtual {p2}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->canNavigateToVideoSupportFragment()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    .line 875
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 876
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 877
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 878
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 881
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    .line 883
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 884
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p1
.end method
