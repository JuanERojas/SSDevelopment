.class public Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;
.source "ItemBridgeAdapterShadowOverlayWrapper.java"


# instance fields
.field private final mHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;->mHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    return-void
.end method


# virtual methods
.method public createWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 35
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;->mHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->createShadowOverlayContainer(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 40
    check-cast p1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->wrap(Landroid/view/View;)V

    return-void
.end method
