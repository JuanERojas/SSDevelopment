.class Landroid/support/v17/leanback/app/BrowseFragment$5;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
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

    .line 1136
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1161
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1164
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p2, p2, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 1165
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1166
    sget p2, Landroid/support/v17/leanback/R$id;->browse_container_dock:I

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p2, p2, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz p2, :cond_2

    .line 1167
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_0

    .line 1168
    :cond_2
    sget p2, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez p1, :cond_3

    .line 1169
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1140
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1144
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    .line 1146
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1151
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    .line 1152
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1155
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$5;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    .line 1156
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
