.class final Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$2;
.super Landroid/util/IntProperty;
.source "FitWidthBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->getVerticalOffsetIntProperty()Landroid/util/IntProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;)Ljava/lang/Integer;
    .locals 0

    .line 241
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->getVerticalOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 233
    check-cast p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$2;->get(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;I)V
    .locals 0

    .line 236
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->setVerticalOffset(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 233
    check-cast p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$2;->setValue(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;I)V

    return-void
.end method
