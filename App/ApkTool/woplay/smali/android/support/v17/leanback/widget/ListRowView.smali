.class public final Landroid/support/v17/leanback/widget/ListRowView;
.super Landroid/widget/LinearLayout;
.source "ListRowView.java"


# instance fields
.field private mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 43
    sget p2, Landroid/support/v17/leanback/R$layout;->lb_list_row:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget p1, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    .line 47
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasFixedSize(Z)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowView;->setOrientation(I)V

    const/high16 p1, 0x40000

    .line 53
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ListRowView;->setDescendantFocusability(I)V

    return-void
.end method


# virtual methods
.method public getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    return-object v0
.end method
