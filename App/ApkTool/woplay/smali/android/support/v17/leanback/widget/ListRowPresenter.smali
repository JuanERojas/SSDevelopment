.class public Landroid/support/v17/leanback/widget/ListRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;,
        Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;,
        Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_RECYCLED_POOL_SIZE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "ListRowPresenter"

.field private static sExpandedRowNoHovercardBottomPadding:I

.field private static sExpandedSelectedRowTopPadding:I

.field private static sSelectedRowTopPadding:I


# instance fields
.field private mBrowseRowsFadingEdgeLength:I

.field private mExpandedRowHeight:I

.field private mFocusZoomFactor:I

.field private mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mKeepChildForeground:Z

.field private mNumRows:I

.field private mRecycledPoolSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRoundedCornersEnabled:Z

.field private mRowHeight:I

.field private mShadowEnabled:Z

.field mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 308
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 337
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x1

    .line 284
    iput v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    .line 290
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    const/4 v1, -0x1

    .line 291
    iput v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    .line 292
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    .line 293
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    .line 338
    invoke-static {p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->isValidZoomIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unhandled zoom factor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    .line 342
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    return-void
.end method

.method private getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)I
    .locals 1

    .line 535
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getHeaderViewHolder()Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 537
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;)I

    move-result p1

    return p1

    .line 540
    :cond_0
    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 2

    .line 524
    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_selected_row_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_browse_expanded_selected_row_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedSelectedRowTopPadding:I

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_browse_expanded_row_no_hovercard_bottom_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedRowNoHovercardBottomPadding:I

    :cond_0
    return-void
.end method

.method private setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 4

    .line 548
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)I

    move-result v0

    .line 551
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedSelectedRowTopPadding:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingTop:I

    :goto_0
    sub-int/2addr v1, v0

    .line 553
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-nez v0, :cond_1

    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sExpandedRowNoHovercardBottomPadding:I

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    goto :goto_1

    .line 555
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    iget v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    sub-int v1, v0, v1

    .line 557
    sget v0, Landroid/support/v17/leanback/widget/ListRowPresenter;->sSelectedRowTopPadding:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 560
    iget v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingBottom:I

    .line 562
    :goto_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v2

    iget v3, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingLeft:I

    iget p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mPaddingRight:I

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setPadding(IIII)V

    return-void
.end method

.method private setupFadingEffect(Landroid/support/v17/leanback/widget/ListRowView;)V
    .locals 3

    .line 629
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object p1

    .line 630
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    if-gez v0, :cond_0

    .line 631
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 633
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsFadingEdgeLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    .line 635
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 637
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mBrowseRowsFadingEdgeLength:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFadingLeftEdgeLength(I)V

    return-void
.end method

.method private updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 3

    .line 611
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mExpanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mSelected:Z

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->init(Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 616
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 618
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v1

    .line 617
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V

    goto :goto_1

    .line 621
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_3

    .line 622
    iget-object p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->unselect()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 835
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 837
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v0, p2, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setOverlayColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2

    .line 568
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->initStatics(Landroid/content/Context;)V

    .line 569
    new-instance v0, Landroid/support/v17/leanback/widget/ListRowView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setupFadingEffect(Landroid/support/v17/leanback/widget/ListRowView;)V

    .line 571
    iget p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object p1

    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 574
    :cond_0
    new-instance p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowView;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;-><init>(Landroid/view/View;Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/support/v17/leanback/widget/ListRowPresenter;)V

    return-object p1
.end method

.method protected createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 1

    .line 791
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object v0
.end method

.method protected dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 3

    .line 583
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 584
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 585
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-nez v1, :cond_0

    .line 587
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 592
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 593
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p1

    .line 594
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p2

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    .line 593
    invoke-interface {p1, p2, v1, v0, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final enableChildRoundedCorners(Z)V
    .locals 0

    .line 743
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRoundedCornersEnabled:Z

    return-void
.end method

.method public freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    .line 843
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 844
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setScrollEnabled(Z)V

    .line 845
    iget-object p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAnimateChildLayout(Z)V

    return-void
.end method

.method public getExpandedRowHeight()I
    .locals 1

    .line 379
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    :goto_0
    return v0
.end method

.method public final getFocusZoomFactor()I
    .locals 1

    .line 386
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method public final getHoverCardPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public getRecycledPoolSize(Landroid/support/v17/leanback/widget/Presenter;)I
    .locals 1

    .line 476
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    return p1
.end method

.method public getRowHeight()I
    .locals 1

    .line 360
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    return v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    return v0
.end method

.method public final getZoomFactor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method protected initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 5

    .line 415
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 416
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 417
    iget-object p1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 418
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 419
    new-instance v1, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    .line 420
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->needsDefaultListSelectEffect()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v1

    .line 421
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->needsDefaultShadow()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v1

    .line 422
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingOutlineClipping(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->areChildRoundedCornersEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 422
    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v1

    .line 424
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    .line 425
    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    .line 428
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 429
    new-instance p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {p1, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 433
    :cond_1
    new-instance p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    invoke-direct {p1, p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    iput-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 435
    iget-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 436
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    .line 438
    iget-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mFocusZoomFactor:I

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    invoke-static {p1, v1, v4}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V

    .line 440
    iget-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setFocusDrawingOrderEnabled(Z)V

    .line 442
    iget-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v1, Landroid/support/v17/leanback/widget/ListRowPresenter$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    .line 449
    iget-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    new-instance v1, Landroid/support/v17/leanback/widget/ListRowPresenter$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/ListRowPresenter$2;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    .line 458
    iget-object p1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    return-void
.end method

.method public final isFocusDimmerUsed()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mUseFocusDimmer:Z

    return v0
.end method

.method public final isKeepChildForeground()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    return v0
.end method

.method public isUsingDefaultListSelectEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    .line 696
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingOutlineClipping(Landroid/content/Context;)Z
    .locals 0

    .line 717
    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/system/Settings;->isOutlineClippingDisabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isUsingZOrder(Landroid/content/Context;)Z
    .locals 0

    .line 705
    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/system/Settings;->preferStaticShadows()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final needsDefaultListSelectEffect()Z
    .locals 1

    .line 462
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingDefaultListSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final needsDefaultShadow()Z
    .locals 1

    .line 754
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 654
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 655
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 656
    check-cast p2, Landroid/support/v17/leanback/widget/ListRow;

    .line 657
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ListRow;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 658
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 659
    iget-object p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ListRow;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    .line 642
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 643
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 644
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRowHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getExpandedRowHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 645
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getExpandedRowHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter;->getRowHeight()I

    move-result p2

    .line 646
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 648
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    .line 649
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 601
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 602
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 603
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->setVerticalPadding(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    .line 604
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ListRowPresenter;->updateFooterViewSwitcher(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    .line 810
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 811
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 812
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 813
    iget-object v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/support/v17/leanback/widget/ListRowPresenter;->applySelectLevelToChild(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    .line 664
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    .line 665
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 666
    iget-object v0, v0, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->clear()V

    .line 667
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_1

    .line 499
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mSelected:Z

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 501
    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 503
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2, v3}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->select(Landroid/support/v17/leanback/widget/HorizontalGridView;Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_3

    .line 507
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 508
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p2

    iget-object p3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz p2, :cond_2

    .line 514
    iget-object p2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mHoverCardViewSwitcher:Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/HorizontalHoverCardSwitcher;->unselect()V

    :cond_2
    if-eqz p3, :cond_3

    .line 516
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 517
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object p2

    iget-object p3, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    const/4 v0, 0x0

    invoke-interface {p2, v0, v0, p1, p3}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 851
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 852
    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setChildrenVisibility(I)V

    return-void
.end method

.method public setExpandedRowHeight(I)V
    .locals 0

    .line 372
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mExpandedRowHeight:I

    return-void
.end method

.method public final setHoverCardPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 0

    .line 484
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mHoverCardPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-void
.end method

.method public final setKeepChildForeground(Z)V
    .locals 0

    .line 766
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mKeepChildForeground:Z

    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    .line 410
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mNumRows:I

    return-void
.end method

.method public setRecycledPoolSize(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRecycledPoolSize:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRowHeight(I)V
    .locals 0

    .line 353
    iput p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mRowHeight:I

    return-void
.end method

.method public final setShadowEnabled(Z)V
    .locals 0

    .line 726
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter;->mShadowEnabled:Z

    return-void
.end method
