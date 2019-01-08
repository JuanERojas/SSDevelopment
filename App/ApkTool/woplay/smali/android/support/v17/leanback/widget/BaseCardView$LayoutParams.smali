.class public Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final VIEW_TYPE_EXTRA:I = 0x2

.field public static final VIEW_TYPE_INFO:I = 0x1

.field public static final VIEW_TYPE_MAIN:I


# instance fields
.field public viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "MAIN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "INFO"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "EXTRA"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 877
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 864
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 853
    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 865
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 867
    sget p2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_Layout_layout_viewType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 870
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V
    .locals 1

    .line 894
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 853
    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 896
    iget p1, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    return-void
.end method
