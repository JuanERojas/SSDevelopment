.class Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;
.super Ljava/lang/Object;
.source "VerticalGridPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnChildSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/VerticalGridPresenter;->initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

.field final synthetic val$gridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V
    .locals 0

    .line 291
    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;->val$gridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 0

    .line 294
    iget-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;->this$0:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object p3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;->val$gridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {p1, p3, p2}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->selectChildView(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method
