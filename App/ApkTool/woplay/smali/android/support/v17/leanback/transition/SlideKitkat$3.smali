.class final Landroid/support/v17/leanback/transition/SlideKitkat$3;
.super Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideHorizontal;
.source "SlideKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/SlideKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public getGone(Landroid/view/View;)F
    .locals 1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0
.end method
