.class final Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperApi21Impl;
.super Ljava/lang/Object;
.source "ShadowHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ShadowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShadowHelperApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-static {p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 0

    .line 82
    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->setShadowFocusLevel(Ljava/lang/Object;F)V

    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .locals 0

    .line 87
    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->setZ(Landroid/view/View;F)V

    return-void
.end method
