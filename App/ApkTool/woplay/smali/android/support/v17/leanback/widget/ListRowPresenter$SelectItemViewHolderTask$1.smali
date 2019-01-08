.class Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final itemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;)V
    .locals 0

    .line 211
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->itemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 215
    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;->itemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;->run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method
