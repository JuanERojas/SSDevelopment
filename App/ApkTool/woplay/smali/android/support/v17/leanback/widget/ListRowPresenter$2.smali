.class Landroid/support/v17/leanback/widget/ListRowPresenter$2;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

.field final synthetic val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 0

    .line 450
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$2;->val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKey(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 453
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$2;->val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$2;->val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 454
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$2;->val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->view:Landroid/view/View;

    .line 455
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 454
    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
