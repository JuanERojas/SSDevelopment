.class final Landroid/support/v17/leanback/widget/PagingIndicator$2;
.super Landroid/util/Property;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;
    .locals 0

    .line 74
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->getDiameter()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$2;->get(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V
    .locals 0

    .line 79
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->setDiameter(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator$2;->set(Landroid/support/v17/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V

    return-void
.end method
