.class Landroid/support/v17/leanback/app/HeadersFragment$3;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;
.source "HeadersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/HeadersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/HeadersFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/HeadersFragment;)V
    .locals 0

    .line 233
    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment$3;->this$0:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public createWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 241
    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$NoOverlappingFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/app/HeadersFragment$NoOverlappingFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public wrap(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 236
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method