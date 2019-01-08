.class public Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectItemViewHolderTask"
.end annotation


# instance fields
.field private mItemPosition:I

.field mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

.field private mSmoothScroll:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 152
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;-><init>()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    .line 153
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->setItemPosition(I)V

    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 1

    .line 169
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    return v0
.end method

.method public getItemTask()Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    return v0
.end method

.method public run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 207
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_2

    .line 208
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object p1

    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->isSmoothScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 223
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 161
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    return-void
.end method

.method public setItemTask(Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0

    .line 202
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    return-void
.end method
