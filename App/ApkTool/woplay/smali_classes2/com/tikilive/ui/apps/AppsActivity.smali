.class public Lcom/tikilive/ui/apps/AppsActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "AppsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0022

    .line 16
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/apps/AppsActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/tikilive/ui/apps/AppsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a008e

    .line 20
    invoke-static {}, Lcom/tikilive/ui/apps/AppsFragment;->newInstance()Lcom/tikilive/ui/apps/AppsFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 21
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
