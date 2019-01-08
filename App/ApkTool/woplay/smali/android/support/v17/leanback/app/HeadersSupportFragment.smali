.class public Landroid/support/v17/leanback/app/HeadersSupportFragment;
.super Landroid/support/v17/leanback/app/BaseRowSupportFragment;
.source "HeadersSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/HeadersSupportFragment$NoOverlappingFrameLayout;,
        Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;,
        Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;
    }
.end annotation


# static fields
.field private static final sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field static sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mHeadersEnabled:Z

.field private mHeadersGone:Z

.field mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

.field private mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

.field final mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 88
    new-instance v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    const-class v1, Landroid/support/v17/leanback/widget/DividerRow;

    new-instance v2, Landroid/support/v17/leanback/widget/DividerPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/DividerPresenter;-><init>()V

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    const-class v1, Landroid/support/v17/leanback/widget/SectionRow;

    new-instance v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_section_header:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(IZ)V

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    const-class v1, Landroid/support/v17/leanback/widget/Row;

    new-instance v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_header:I

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(I)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 150
    new-instance v0, Landroid/support/v17/leanback/app/HeadersSupportFragment$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    .line 126
    new-instance v0, Landroid/support/v17/leanback/app/HeadersSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/HeadersSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 224
    new-instance v0, Landroid/support/v17/leanback/app/HeadersSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/HeadersSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 95
    sget-object v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 96
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    return-void
.end method

.method private updateFadingEdgeToBrandColor(I)V
    .locals 3

    .line 254
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->fade_out_edge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 258
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_0
    return-void
.end method

.method private updateListViewVisibility()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    if-nez v1, :cond_2

    .line 188
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 191
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 109
    sget v0, Landroid/support/v17/leanback/R$id;->browse_headers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object p1
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 161
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_headers_fragment:I

    return v0
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 297
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onDestroyView()V

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 115
    iget-object p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    .line 117
    check-cast p2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 118
    iget-object p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    .line 119
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p3

    check-cast p3, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/Row;

    .line 118
    invoke-interface {p1, p3, p2}, Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 2

    .line 284
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000

    .line 287
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setDescendantFocusability(I)V

    .line 288
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionEnd()V

    return-void
.end method

.method public bridge synthetic onTransitionPrepare()Z
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionPrepare()Z

    move-result v0

    return v0
.end method

.method public onTransitionStart()V
    .locals 2

    .line 265
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionStart()V

    .line 266
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x20000

    .line 274
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setDescendantFocusability(I)V

    .line 275
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 166
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-boolean p2, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColorSet:Z

    if-eqz p2, :cond_1

    .line 172
    iget p2, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setBackgroundColor(I)V

    .line 173
    iget p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->updateFadingEdgeToBrandColor(I)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 176
    instance-of p2, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    .line 177
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->updateFadingEdgeToBrandColor(I)V

    .line 180
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->updateListViewVisibility()V

    return-void
.end method

.method public bridge synthetic setAlignment(I)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setAlignment(I)V

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 1

    .line 244
    iput p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColorSet:Z

    .line 247
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    iget v0, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setBackgroundColor(I)V

    .line 249
    iget p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->updateFadingEdgeToBrandColor(I)V

    :cond_0
    return-void
.end method

.method setHeadersEnabled(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    .line 199
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->updateListViewVisibility()V

    return-void
.end method

.method setHeadersGone(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    .line 204
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->updateListViewVisibility()V

    return-void
.end method

.method public setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    return-void
.end method

.method public setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    .line 238
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    .line 239
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 240
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersSupportFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    return-void
.end method
