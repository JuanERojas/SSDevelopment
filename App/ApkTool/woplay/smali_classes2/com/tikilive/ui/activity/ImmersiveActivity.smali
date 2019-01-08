.class public abstract Lcom/tikilive/ui/activity/ImmersiveActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImmersiveActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/ImmersiveActivity;->setImmersiveMode()V

    :cond_0
    return-void
.end method

.method protected setImmersiveMode()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x706

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    const/16 v0, 0x1706

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/ImmersiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/ImmersiveActivity;->setImmersive(Z)V

    :cond_2
    return-void
.end method
