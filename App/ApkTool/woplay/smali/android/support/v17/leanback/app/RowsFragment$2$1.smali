.class Landroid/support/v17/leanback/app/RowsFragment$2$1;
.super Ljava/lang/Object;
.source "RowsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/RowsFragment$2;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/app/RowsFragment$2;

.field final synthetic val$rvh:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsFragment$2;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 524
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$2$1;->this$1:Landroid/support/v17/leanback/app/RowsFragment$2;

    iput-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment$2$1;->val$rvh:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 527
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$2$1;->this$1:Landroid/support/v17/leanback/app/RowsFragment$2;

    iget-object v0, v0, Landroid/support/v17/leanback/app/RowsFragment$2;->val$rowHolderTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$2$1;->val$rvh:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 528
    invoke-static {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;->run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method
