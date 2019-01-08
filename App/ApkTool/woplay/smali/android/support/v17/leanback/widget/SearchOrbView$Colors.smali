.class public Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
.super Ljava/lang/Object;
.source "SearchOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# static fields
.field private static final sBrightnessAlpha:F = 0.15f


# instance fields
.field public brightColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public iconColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0, p1, p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    if-ne p2, p1, :cond_0

    .line 93
    invoke-static {p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->getBrightColor(I)I

    move-result p2

    :cond_0
    iput p2, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    .line 94
    iput p3, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    return-void
.end method

.method public static getBrightColor(I)I
    .locals 5

    .line 120
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float v0, v0, v1

    const/high16 v2, 0x42190000    # 38.25f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 121
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v3, v2

    float-to-int v3, v3

    .line 122
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    add-float/2addr v4, v2

    float-to-int v4, v4

    .line 123
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v1

    add-float/2addr p0, v2

    float-to-int p0, p0

    .line 124
    invoke-static {p0, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
