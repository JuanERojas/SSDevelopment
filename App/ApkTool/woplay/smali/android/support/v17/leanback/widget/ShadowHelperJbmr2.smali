.class Landroid/support/v17/leanback/widget/ShadowHelperJbmr2;
.super Ljava/lang/Object;
.source "ShadowHelperJbmr2.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShadow(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 39
    sget v2, Landroid/support/v17/leanback/R$layout;->lb_shadow:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;-><init>()V

    .line 41
    sget v1, Landroid/support/v17/leanback/R$id;->lb_shadow_normal:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;->mNormalShadow:Landroid/view/View;

    .line 42
    sget v1, Landroid/support/v17/leanback/R$id;->lb_shadow_focused:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;->mFocusShadow:Landroid/view/View;

    return-object v0
.end method

.method public static prepareParent(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    return-void
.end method

.method public static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 2

    .line 48
    check-cast p0, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;

    .line 49
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;->mNormalShadow:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 50
    iget-object p0, p0, Landroid/support/v17/leanback/widget/ShadowHelperJbmr2$ShadowImpl;->mFocusShadow:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
