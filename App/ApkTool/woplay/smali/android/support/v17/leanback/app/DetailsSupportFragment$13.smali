.class Landroid/support/v17/leanback/app/DetailsSupportFragment$13;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


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

    .line 843
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 852
    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-eq p1, p2, :cond_2

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Landroid/support/v17/leanback/R$id;->details_fragment_root:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 854
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez p1, :cond_2

    .line 855
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideInGridView()V

    .line 856
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    if-ne p1, p2, :cond_1

    .line 859
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    .line 860
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 862
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
