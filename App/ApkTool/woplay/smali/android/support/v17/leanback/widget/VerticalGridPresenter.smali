.class public Landroid/support/v17/leanback/widget/VerticalGridPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GridPresenter"


# instance fields
.field private mFocusZoomFactor:I

.field private mKeepChildForeground:Z

.field private mNumColumns:I

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mRoundedCornersEnabled:Z

.field private mShadowEnabled:Z

.field mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 110
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 139
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    .line 97
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 100
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    .line 140
    iput p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    .line 141
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    return-void
.end method


# virtual methods
.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createGridViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 3

    .line 248
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_vertical_grid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 250
    new-instance v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    sget v1, Landroid/support/v17/leanback/R$id;->browse_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-object v0
.end method

.method protected createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 1

    .line 329
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object v0
.end method

.method public final enableChildRoundedCorners(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return-void
.end method

.method public final getFocusZoomFactor()I
    .locals 1

    .line 222
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method public final getKeepChildForeground()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 160
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    return v0
.end method

.method public final getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    .line 360
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    return v0
.end method

.method protected initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V
    .locals 4

    .line 261
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 262
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Number of columns must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setNumColumns(I)V

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 268
    iget-object v1, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 269
    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-nez v2, :cond_1

    .line 270
    new-instance v2, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    .line 271
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 272
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->needsDefaultShadow()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->areChildRoundedCornersEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 274
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 275
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 276
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 277
    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    .line 278
    iget-object v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    new-instance v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 283
    :cond_1
    iget-object v1, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 284
    iget-object v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    .line 285
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusDrawingOrderEnabled(Z)V

    .line 287
    iget-object v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V

    .line 291
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    return-void
.end method

.method public final isFocusDimmerUsed()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    return v0
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    .line 187
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingZOrder(Landroid/content/Context;)Z
    .locals 0

    .line 211
    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/system/Settings;->preferStaticShadows()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final needsDefaultShadow()Z
    .locals 1

    .line 215
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 335
    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 336
    iget-object v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    check-cast p2, Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 337
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p2

    iget-object p1, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 1

    .line 234
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->createGridViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 236
    new-instance v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;)V

    iput-object v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 237
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    .line 238
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    if-nez v0, :cond_0

    .line 239
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "super.initializeGridViewHolder() must be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 343
    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 344
    iget-object v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 345
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method selectChildView(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :goto_0
    if-nez p1, :cond_1

    .line 385
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0, v0, v0, v0}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 387
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object p2

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-interface {p2, v1, p1, v0, v0}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V
    .locals 0

    .line 403
    iget-object p1, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    return-void
.end method

.method public final setKeepChildForeground(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    return-void
.end method

.method public setNumberOfColumns(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid number of columns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 152
    iput p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    :cond_1
    return-void
.end method

.method public final setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 0

    .line 370
    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-void
.end method

.method public final setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 353
    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public final setShadowEnabled(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    return-void
.end method
