.class Landroid/support/v17/leanback/app/BrowseFragment$9;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseFragment;->createHeadersTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    .line 1347
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1348
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz p1, :cond_0

    .line 1349
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1350
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 1351
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1357
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz p1, :cond_1

    .line 1358
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionEnd()V

    .line 1359
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz p1, :cond_1

    .line 1360
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1361
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1362
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1368
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment;->updateTitleViewVisibility()V

    .line 1370
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    if-eqz p1, :cond_2

    .line 1371
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;->onHeadersTransitionStop(Z)V

    :cond_2
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
