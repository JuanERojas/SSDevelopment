.class public Lcom/tikilive/ui/welcome/NoNetworkFragment;
.super Landroid/support/v4/app/Fragment;
.source "NoNetworkFragment.java"


# instance fields
.field private mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/welcome/NoNetworkFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/welcome/NoNetworkFragment;
    .locals 1

    .line 26
    new-instance v0, Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/welcome/NoNetworkFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 32
    instance-of v0, p1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    iput-object p1, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-void

    .line 35
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

    const p3, 0x7f0d0056

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a01f2

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 52
    new-instance v0, Lcom/tikilive/ui/welcome/NoNetworkFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/welcome/NoNetworkFragment$1;-><init>(Lcom/tikilive/ui/welcome/NoNetworkFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a025b

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 70
    new-instance p2, Lcom/tikilive/ui/welcome/NoNetworkFragment$2;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/welcome/NoNetworkFragment$2;-><init>(Lcom/tikilive/ui/welcome/NoNetworkFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
