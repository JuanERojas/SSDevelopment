.class public final Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;
.super Ljava/lang/Object;
.source "BoundsRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/graphics/BoundsRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueRule"
.end annotation


# instance fields
.field mAbsoluteValue:I

.field mFraction:F


# direct methods
.method constructor <init>(IF)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    .line 67
    iput p2, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget v0, p1, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    iput v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    .line 72
    iget p1, p1, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    iput p1, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    return-void
.end method

.method public static absoluteValue(I)Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;
    .locals 2

    .line 51
    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(IF)V

    return-object v0
.end method

.method public static inheritFromParent(F)Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;
    .locals 2

    .line 41
    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(IF)V

    return-object v0
.end method

.method public static inheritFromParentWithOffset(FI)Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;
    .locals 1

    .line 62
    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v0, p1, p0}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public getAbsoluteValue()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    return v0
.end method

.method public getFraction()F
    .locals 1

    .line 88
    iget v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    return v0
.end method

.method public setAbsoluteValue(I)V
    .locals 0

    .line 97
    iput p1, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    .line 81
    iput p1, p0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    return-void
.end method
