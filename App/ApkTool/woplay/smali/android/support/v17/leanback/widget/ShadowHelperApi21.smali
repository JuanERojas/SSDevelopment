.class Landroid/support/v17/leanback/widget/ShadowHelperApi21;
.super Ljava/lang/Object;
.source "ShadowHelperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;
    }
.end annotation


# static fields
.field static final sOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->sOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;
    .locals 1

    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 42
    invoke-static {p0, v0, p3}, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    goto :goto_0

    .line 45
    :cond_0
    sget-object p3, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->sOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    :goto_0
    new-instance p3, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;

    invoke-direct {p3}, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;-><init>()V

    .line 48
    iput-object p0, p3, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mShadowContainer:Landroid/view/View;

    .line 49
    iput p1, p3, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    .line 50
    iput p2, p3, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mFocusedZ:F

    .line 51
    iget p1, p3, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    return-object p3
.end method

.method public static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 3

    .line 57
    check-cast p0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;

    .line 58
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mShadowContainer:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mFocusedZ:F

    iget p0, p0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    sub-float/2addr v2, p0

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    return-void
.end method
