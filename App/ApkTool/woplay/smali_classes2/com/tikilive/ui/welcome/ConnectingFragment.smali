.class public Lcom/tikilive/ui/welcome/ConnectingFragment;
.super Landroid/support/v4/app/Fragment;
.source "ConnectingFragment.java"


# instance fields
.field private mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/tikilive/ui/welcome/ConnectingFragment;
    .locals 1

    .line 21
    new-instance v0, Lcom/tikilive/ui/welcome/ConnectingFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/welcome/ConnectingFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 34
    instance-of v0, p1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    iput-object p1, p0, Lcom/tikilive/ui/welcome/ConnectingFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be an instance of WelcomeActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0051

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/tikilive/ui/welcome/ConnectingFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-void
.end method
