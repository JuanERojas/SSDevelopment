.class Landroid/support/v17/leanback/app/BrowseSupportFragment$9;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->createHeadersTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    .line 1324
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1325
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz p1, :cond_0

    .line 1326
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1327
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    .line 1328
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1329
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1334
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz p1, :cond_1

    .line 1335
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    .line 1336
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz p1, :cond_1

    .line 1337
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1338
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1345
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    .line 1347
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz p1, :cond_2

    .line 1348
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStop(Z)V

    :cond_2
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
