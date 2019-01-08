.class Landroid/support/v17/leanback/app/DetailsSupportFragment$15;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 894
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 900
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    .line 901
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x6f

    if-ne p2, p1, :cond_1

    .line 903
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 904
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
