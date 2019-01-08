.class public Lcom/tikilive/ui/video/SearchActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    .line 51
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/SearchActivity;->setContentView(I)V

    .line 53
    invoke-static {}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->newInstance()Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    return-void
.end method
