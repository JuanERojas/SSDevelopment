.class public Landroid/support/v17/leanback/widget/GuidedActionsStylist;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GuidedActionsStylist"

.field public static final VIEW_TYPE_DATE_PICKER:I = 0x1

.field public static final VIEW_TYPE_DEFAULT:I

.field static final sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;


# instance fields
.field private mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field private mBackToCollapseActivatorView:Z

.field private mBackToCollapseSubActions:Z

.field private mBgView:Landroid/view/View;

.field private mButtonActions:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionMinLines:I

.field private mDisabledChevronAlpha:F

.field private mDisabledDescriptionAlpha:F

.field private mDisabledTextAlpha:F

.field private mDisplayHeight:I

.field private mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

.field private mEnabledChevronAlpha:F

.field private mEnabledDescriptionAlpha:F

.field private mEnabledTextAlpha:F

.field mExpandTransition:Ljava/lang/Object;

.field private mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

.field private mKeyLinePercent:F

.field mMainView:Landroid/view/ViewGroup;

.field private mSubActionsBackground:Landroid/view/View;

.field mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field private mTitleMaxLines:I

.field private mTitleMinLines:I

.field private mVerticalPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 158
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 159
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 160
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setAlignedToTextViewBaseline(Z)V

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetWithPadding(Z)V

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 165
    sget-object v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    new-array v1, v1, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    .line 423
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 0

    .line 140
    iget-object p0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object p0
.end method

.method private getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;)I
    .locals 1

    .line 1520
    iget p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineHeight()I

    move-result p2

    mul-int v0, v0, p2

    sub-int/2addr p1, v0

    return p1
.end method

.method private getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2

    .line 1492
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1493
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F
    .locals 2

    .line 1481
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1483
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .locals 2

    .line 1487
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1488
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1499
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1502
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1503
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1504
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1506
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static setMaxLines(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 764
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 767
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method private setupNextImeOptions(Landroid/widget/EditText;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 784
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method private updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 4

    .line 1429
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isSubAction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1430
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1431
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1433
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1434
    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1436
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-ne v0, v3, :cond_2

    .line 1437
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v1

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1440
    :cond_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1441
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 1442
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1449
    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1450
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindChevronView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1219
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    .line 1223
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1225
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1224
    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1229
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 3

    .line 1164
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1168
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1172
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    .line 1174
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p2

    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p2, v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    .line 1187
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1188
    invoke-virtual {p0, p1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    goto :goto_1

    .line 1191
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    new-instance p2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;

    invoke-direct {p2, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p1, v0, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 552
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public getExpandedAction()Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1

    .line 1361
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getItemViewType(Landroid/support/v17/leanback/widget/GuidedAction;)I
    .locals 0

    .line 586
    instance-of p1, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getKeyLine()I
    .locals 2

    .line 1234
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 560
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public final isBackKeyToCollapseActivatorView()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return v0
.end method

.method public final isBackKeyToCollapseSubActions()Z
    .locals 1

    .line 1132
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return v0
.end method

.method public isButtonActions()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return v0
.end method

.method public isExpandTransitionSupported()Z
    .locals 2

    .line 1097
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 1354
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInExpandTransition()Z
    .locals 1

    .line 1087
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubActionsExpanded()Z
    .locals 1

    .line 1347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1

    .line 920
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 921
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onAnimateItemFocused(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 0

    .line 899
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onAnimateItemPressedCancelled(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 907
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onBindActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 5

    .line 968
    instance-of v0, p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_2

    .line 969
    check-cast p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    .line 970
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast p1, Landroid/support/v17/leanback/widget/picker/DatePicker;

    .line 971
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDatePickerFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 973
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setMinDate(J)V

    .line 975
    :cond_0
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 976
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setMaxDate(J)V

    .line 978
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 979
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 980
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 981
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    .line 980
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateDate(IIIZ)V

    :cond_2
    return-void
.end method

.method public onBindCheckMarkView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 6

    .line 941
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 943
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x101021a

    goto :goto_0

    :cond_0
    const v0, 0x1010219

    .line 946
    :goto_0
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 948
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 949
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 952
    :cond_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 954
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast p1, Landroid/widget/Checkable;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 957
    :cond_2
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBindChevronView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 3

    .line 1049
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasNext()Z

    move-result v0

    .line 1050
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1052
    :cond_1
    :goto_0
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1053
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v0, :cond_4

    .line 1056
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 1057
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 1058
    :goto_2
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1059
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-ne p2, v0, :cond_5

    .line 1060
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1062
    :cond_5
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 5

    .line 678
    iput-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 679
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 681
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 683
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 684
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 685
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 687
    :cond_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 689
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    goto :goto_2

    :cond_3
    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 694
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 695
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 696
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 699
    :cond_4
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 700
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindCheckMarkView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 702
    :cond_5
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setIcon(Landroid/widget/ImageView;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    .line 704
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasMultilineDescription()Z

    move-result v0

    const/high16 v2, 0x20000

    if-eqz v0, :cond_6

    .line 705
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 706
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 707
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 708
    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    or-int/2addr v3, v2

    .line 707
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 709
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 710
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    or-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 712
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    .line 713
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 712
    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_3

    .line 717
    :cond_6
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 718
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 720
    :cond_7
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 721
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    .line 724
    :cond_8
    :goto_3
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 725
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 727
    :cond_9
    invoke-virtual {p0, p1, v1, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 728
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 729
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 730
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_4

    .line 732
    :cond_a
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 733
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 735
    :goto_4
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupImeOptions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 737
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 439
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 441
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 443
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    .line 444
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_0

    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_content2:I

    goto :goto_0

    :cond_0
    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_content:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 446
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_1

    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_list_background2:I

    goto :goto_1

    :cond_1
    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_list_background:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBgView:Landroid/view/View;

    .line 448
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    instance-of p1, p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    goto :goto_3

    .line 451
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz p2, :cond_3

    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_list2:I

    goto :goto_2

    :cond_3
    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_list:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 453
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-nez p1, :cond_4

    .line 454
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No ListView exists."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_4
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 457
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 458
    iget-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-nez p1, :cond_5

    .line 459
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 461
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget p2, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 465
    :cond_5
    :goto_3
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 466
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    .line 469
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 470
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 471
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionEnabledChevronAlpha:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    .line 472
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionDisabledChevronAlpha:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    .line 473
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionTitleMinLines:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    .line 474
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionTitleMaxLines:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    .line 475
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionDescriptionMinLines:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    .line 476
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedActionVerticalPadding:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    const-string p2, "window"

    .line 477
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 478
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_unselected_text_alpha:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_disabled_text_alpha:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_unselected_description_text_alpha:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_disabled_description_text_alpha:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    .line 489
    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    .line 490
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;

    if-eqz p1, :cond_6

    .line 491
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;

    new-instance p2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;

    invoke-direct {p2, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->setInterceptKeyEventListener(Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;)V

    .line 511
    :cond_6
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 4

    .line 647
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 648
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 649
    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {v1, v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 3

    if-nez p2, :cond_0

    .line 664
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object p1

    return-object p1

    .line 666
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 667
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 668
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {v0, p2, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 537
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 538
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 539
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 540
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 541
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    .line 542
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    .line 543
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBgView:Landroid/view/View;

    .line 544
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-void
.end method

.method onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1015
    invoke-virtual {p0, p1, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1016
    iget-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1017
    iget-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 1018
    iget-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    new-instance p3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;

    invoke-direct {p3, p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1029
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    if-eqz p2, :cond_1

    .line 1030
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    .line 1033
    :cond_1
    iget-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1034
    iget-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 p2, 0x0

    .line 1035
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 1036
    iget-object p3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method protected onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 8
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 826
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 827
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 828
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_6

    .line 830
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 832
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    .line 836
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    .line 840
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 843
    :cond_2
    iput v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto/16 :goto_2

    .line 844
    :cond_3
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 846
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 848
    :cond_4
    iput v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_2

    .line 849
    :cond_5
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 850
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 851
    iput v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 855
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 858
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    :cond_8
    iget v7, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v7, v5, :cond_a

    if-eqz v2, :cond_c

    .line 862
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/16 p3, 0x8

    goto :goto_0

    :cond_9
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    .line 866
    :cond_a
    iget v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v2, v4, :cond_b

    if-eqz v1, :cond_c

    .line 868
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_1

    .line 870
    :cond_b
    iget v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v1, v3, :cond_c

    .line 871
    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 872
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    .line 875
    :cond_c
    :goto_1
    iput v6, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 878
    :cond_d
    :goto_2
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProvideItemLayoutId()I
    .locals 1

    .line 606
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions_item:I

    return v0
.end method

.method public onProvideItemLayoutId(I)I
    .locals 3

    if-nez p1, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 629
    sget p1, Landroid/support/v17/leanback/R$layout;->lb_guidedactions_datepicker_item:I

    return p1

    .line 631
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported in GuidedActionsStylist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProvideLayoutId()I
    .locals 1

    .line 576
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedbuttonactions:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions:I

    :goto_0
    return v0
.end method

.method public onUpdateActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 5

    .line 993
    instance-of v0, p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_0

    .line 994
    check-cast p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    .line 995
    iget-object p1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast p1, Landroid/support/v17/leanback/widget/picker/DatePicker;

    .line 996
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 997
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1379
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1380
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    goto :goto_0

    .line 1381
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eq v1, v2, :cond_1

    .line 1382
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1383
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 1387
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 1388
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    .line 1390
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1391
    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 1392
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 3

    .line 1397
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1399
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1400
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, -0x2

    .line 1404
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p2, -0x1

    .line 1405
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1406
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    .line 1408
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1410
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getSubActions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    goto :goto_0

    .line 1414
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1415
    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result p1

    .line 1416
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 1417
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1418
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1419
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    .line 1420
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    .line 1423
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public openInEditMode(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 3

    .line 745
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 746
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 747
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    new-instance v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setAsButtonActions()V
    .locals 2

    .line 518
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAsButtonActions() must be called before creating views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return-void
.end method

.method public final setBackKeyToCollapseActivatorView(Z)V
    .locals 0

    .line 1144
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method public final setBackKeyToCollapseSubActions(Z)V
    .locals 0

    .line 1121
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return-void
.end method

.method public setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1010
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method

.method public setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 794
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    :cond_0
    return-void
.end method

.method setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 800
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    return-void
.end method

.method setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .locals 1

    .line 804
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    :cond_0
    return-void
.end method

.method public setExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method protected setupImeOptions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0

    .line 778
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    .line 779
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    return-void
.end method

.method startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1243
    iget-object v2, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1245
    iget-object v5, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v6, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1246
    invoke-virtual {v6, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-nez v1, :cond_0

    .line 1247
    iget-object v6, v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 1251
    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 1262
    :goto_2
    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v7

    if-eqz p2, :cond_c

    .line 1264
    invoke-static {v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_5

    .line 1265
    iget-object v9, v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    :cond_5
    iget-object v9, v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    .line 1266
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    :goto_3
    const/16 v10, 0x70

    .line 1267
    invoke-static {v10, v9}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object v9

    .line 1270
    new-instance v10, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;

    invoke-direct {v10, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v9, v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    .line 1280
    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeTransform()Ljava/lang/Object;

    move-result-object v10

    .line 1281
    invoke-static {v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x3

    .line 1282
    invoke-static {v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v12

    .line 1284
    invoke-static {v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v14, 0x64

    if-nez v1, :cond_6

    const-wide/16 v3, 0x96

    .line 1286
    invoke-static {v9, v3, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1287
    invoke-static {v10, v14, v15}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1288
    invoke-static {v11, v14, v15}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1289
    invoke-static {v13, v14, v15}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    goto :goto_4

    .line 1291
    :cond_6
    invoke-static {v12, v14, v15}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v3, 0x32

    .line 1292
    invoke-static {v13, v3, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1293
    invoke-static {v10, v3, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    .line 1294
    invoke-static {v11, v3, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    .line 1297
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 1298
    invoke-virtual {v14, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-ne v4, v5, :cond_8

    if-eqz v7, :cond_7

    .line 1302
    iget-object v14, v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v14}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1303
    iget-object v4, v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    :cond_7
    const/4 v14, 0x1

    goto :goto_6

    .line 1307
    :cond_8
    iget-object v14, v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v9, v14}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1308
    iget-object v4, v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x1

    invoke-static {v12, v4, v14}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1311
    :cond_9
    iget-object v2, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-static {v13, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1312
    iget-object v2, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-static {v13, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    .line 1313
    invoke-static {v8, v9}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_a

    .line 1317
    invoke-static {v8, v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1318
    invoke-static {v8, v11}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1320
    :cond_a
    invoke-static {v8, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1321
    invoke-static {v8, v13}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1322
    iput-object v8, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    .line 1323
    iget-object v2, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;

    invoke-direct {v3, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 1331
    iget-object v2, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1332
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v4, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->offsetTopAndBottom(I)V

    .line 1333
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1335
    :cond_b
    iget-object v2, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1337
    :cond_c
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    if-eqz v7, :cond_d

    .line 1339
    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    :cond_d
    return-void
.end method

.method public startExpandedTransition(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1109
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void
.end method
