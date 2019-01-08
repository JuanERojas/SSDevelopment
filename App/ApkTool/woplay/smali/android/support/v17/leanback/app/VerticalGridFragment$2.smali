.class Landroid/support/v17/leanback/app/VerticalGridFragment$2;
.super Ljava/lang/Object;
.source "VerticalGridFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 4

    .line 121
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    .line 122
    sget-boolean v1, Landroid/support/v17/leanback/app/VerticalGridFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VerticalGF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grid selected position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->gridOnItemSelected(I)V

    .line 124
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VerticalGridFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/VerticalGridFragment$2;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
