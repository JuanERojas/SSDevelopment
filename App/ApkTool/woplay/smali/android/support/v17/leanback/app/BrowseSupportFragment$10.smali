.class Landroid/support/v17/leanback/app/BrowseSupportFragment$10;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
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

    .line 1460
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClicked(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 0

    .line 1463
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1466
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1469
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    .line 1470
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
