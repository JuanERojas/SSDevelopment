.class public Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;
.super Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListRowFragmentFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory<",
        "Landroid/support/v17/leanback/app/RowsSupportFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 638
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 0

    .line 641
    new-instance p1, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    return-object p1
.end method

.method public bridge synthetic createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 638
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;->createFragment(Ljava/lang/Object;)Landroid/support/v17/leanback/app/RowsSupportFragment;

    move-result-object p1

    return-object p1
.end method
