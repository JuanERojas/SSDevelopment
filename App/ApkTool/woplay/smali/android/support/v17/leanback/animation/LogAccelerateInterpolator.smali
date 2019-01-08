.class public Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "LogAccelerateInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field mBase:I

.field mDrift:I

.field final mLogScale:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mBase:I

    .line 33
    iput p2, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mDrift:I

    .line 34
    iget p1, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mBase:I

    iget p2, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mDrift:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p2}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->computeLog(FII)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mLogScale:F

    return-void
.end method

.method static computeLog(FII)F
    .locals 4

    int-to-double v0, p1

    neg-float p1, p0

    float-to-double v2, p1

    .line 38
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float p2, p2, p0

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 43
    iget v1, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mBase:I

    iget v2, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mDrift:I

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->computeLog(FII)F

    move-result p1

    iget v1, p0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;->mLogScale:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    return v0
.end method
