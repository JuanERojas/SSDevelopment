.class public final Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
.super Ljava/lang/Object;
.source "ShadowOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;


# instance fields
.field private dynamicShadowFocusedZ:F

.field private dynamicShadowUnfocusedZ:F

.field private roundedCornerRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->roundedCornerRadius:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 198
    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->dynamicShadowUnfocusedZ:F

    .line 199
    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->dynamicShadowFocusedZ:F

    return-void
.end method


# virtual methods
.method public dynamicShadowZ(FF)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 0

    .line 220
    iput p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->dynamicShadowUnfocusedZ:F

    .line 221
    iput p2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->dynamicShadowFocusedZ:F

    return-object p0
.end method

.method public final getDynamicShadowFocusedZ()F
    .locals 1

    .line 249
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->dynamicShadowFocusedZ:F

    return v0
.end method

.method public final getDynamicShadowUnfocusedZ()F
    .locals 1

    .line 240
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->dynamicShadowUnfocusedZ:F

    return v0
.end method

.method public final getRoundedCornerRadius()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->roundedCornerRadius:I

    return v0
.end method

.method public roundedCornerRadius(I)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 0

    .line 208
    iput p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->roundedCornerRadius:I

    return-object p0
.end method
