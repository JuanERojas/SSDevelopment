.class abstract Landroid/support/v17/leanback/app/BaseRowFragment;
.super Landroid/app/Fragment;
.source "BaseRowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CURRENT_SELECTED_POSITION:Ljava/lang/String; = "currentSelectedPosition"


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field private mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

.field private mPendingTransitionPrepare:Z

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private final mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

.field mSelectedPosition:I

.field mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 48
    new-instance v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;-><init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    .line 52
    new-instance v0, Landroid/support/v17/leanback/app/BaseRowFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/BaseRowFragment;)Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    return-object p0
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 0

    .line 81
    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object p1
.end method

.method public final getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    return-object v0
.end method

.method getItem(Landroid/support/v17/leanback/widget/Row;I)Ljava/lang/Object;
    .locals 1

    .line 258
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ListRow;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Landroid/support/v17/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRow;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method abstract getLayoutResourceId()I
.end method

.method public final getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    return v0
.end method

.method public final getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->getLayoutResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 73
    iget-boolean p2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    if-eqz p2, :cond_0

    .line 74
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    .line 75
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 155
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->clear()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "currentSelectedPosition"

    .line 162
    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 3

    .line 285
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    .line 287
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 289
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    .line 290
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 3

    .line 266
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 268
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    return v1

    .line 271
    :cond_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    return v2
.end method

.method public onTransitionStart()V
    .locals 2

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 278
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string p1, "currentSelectedPosition"

    const/4 v0, -0x1

    .line 87
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAdapterAndSelection()V

    .line 90
    iget-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object p2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public final setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, p1, :cond_0

    .line 188
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 189
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    :cond_0
    return-void
.end method

.method setAdapterAndSelection()V
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    if-eq v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 144
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->startLateSelection()V

    goto :goto_1

    .line 147
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ltz v0, :cond_4

    .line 148
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAlignment(I)V
    .locals 3

    .line 295
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 302
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 303
    iget-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 305
    iget-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    :cond_0
    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eq v0, p1, :cond_0

    .line 170
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 171
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    :cond_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    .line 228
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 231
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 237
    iget-object p2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object p2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 249
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 250
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAdapterAndSelection()V

    :cond_0
    return-void
.end method
