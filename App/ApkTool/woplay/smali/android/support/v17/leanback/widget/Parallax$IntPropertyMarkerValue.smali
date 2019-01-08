.class Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;
.super Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyMarkerValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue<",
        "Landroid/support/v17/leanback/widget/Parallax$IntProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactionOfMax:F

.field private final mValue:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/Parallax$IntProperty;I)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$IntProperty;IF)V

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/widget/Parallax$IntProperty;IF)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;-><init>(Ljava/lang/Object;)V

    .line 238
    iput p2, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    .line 239
    iput p3, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    return-void
.end method


# virtual methods
.method final getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I
    .locals 2

    .line 246
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    .line 247
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result p1

    iget v1, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    mul-float p1, p1, v1

    .line 246
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method
