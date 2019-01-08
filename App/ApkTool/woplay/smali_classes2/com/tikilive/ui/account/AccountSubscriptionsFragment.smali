.class public Lcom/tikilive/ui/account/AccountSubscriptionsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountSubscriptionsFragment.java"


# instance fields
.field private mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/tikilive/ui/account/AccountSubscriptionsFragment;
    .locals 1

    .line 25
    new-instance v0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 31
    instance-of v0, p1, Lcom/tikilive/ui/account/AccountActivity;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/tikilive/ui/account/AccountActivity;

    iput-object p1, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be an instance of AccountActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d004b

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0256

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 58
    iget-object p2, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 61
    new-instance p1, Lcom/tikilive/ui/account/PackageAdapter;

    iget-object p2, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p1, p2}, Lcom/tikilive/ui/account/PackageAdapter;-><init>(Landroid/app/Activity;)V

    .line 62
    iget-object p2, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/account/AccountActivity;->getSubscriptionItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/account/PackageAdapter;->addItems(Ljava/util/List;)V

    .line 63
    iget-object p2, p0, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
