.class Landroid/support/v17/leanback/app/BrowseSupportFragment$4;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


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

    .line 1064
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5

    .line 1068
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1071
    :cond_0
    sget-boolean v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BrowseSupportFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusSearch focused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " + direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    .line 1075
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1077
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x82

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 1079
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    .line 1080
    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1

    .line 1083
    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const/16 v0, 0x11

    const/16 v3, 0x42

    if-eqz v2, :cond_6

    const/16 v4, 0x42

    goto :goto_2

    :cond_6
    const/16 v4, 0x11

    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v0, 0x42

    .line 1087
    :goto_3
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_a

    if-ne p2, v4, :cond_a

    .line 1088
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isVerticalScrolling()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p2, p2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_4

    .line 1091
    :cond_8
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_4
    return-object p1

    :cond_a
    if-ne p2, v0, :cond_d

    .line 1093
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isVerticalScrolling()Z

    move-result p2

    if-eqz p2, :cond_b

    return-object p1

    .line 1095
    :cond_b
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p2, p2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1096
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_c
    return-object p1

    :cond_d
    if-ne p2, v1, :cond_e

    .line 1099
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean p2, p2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz p2, :cond_e

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method
