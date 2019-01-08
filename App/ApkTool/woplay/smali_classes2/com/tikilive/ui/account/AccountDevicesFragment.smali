.class public Lcom/tikilive/ui/account/AccountDevicesFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountDevicesFragment.java"


# instance fields
.field private mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

.field private mCurrentDevicesLinked:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/account/AccountDevicesFragment;)Lcom/tikilive/ui/account/AccountActivity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/account/AccountDevicesFragment;)Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mCurrentDevicesLinked:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/account/AccountDevicesFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/account/AccountDevicesFragment;
    .locals 1

    .line 29
    new-instance v0, Lcom/tikilive/ui/account/AccountDevicesFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/account/AccountDevicesFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 35
    instance-of v0, p1, Lcom/tikilive/ui/account/AccountActivity;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/tikilive/ui/account/AccountActivity;

    iput-object p1, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    return-void

    .line 38
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

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d004a

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountDevicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->getTotalDevices()I

    move-result v0

    const v1, 0x7f100002

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/account/AccountActivity;->getInUseDevicesCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/account/AccountActivity;->getTotalDevices()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a00a1

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mCurrentDevicesLinked:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mCurrentDevicesLinked:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a024e

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p1, p2, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 66
    iget-object p2, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 69
    new-instance p1, Lcom/tikilive/ui/account/DeviceAdapter;

    iget-object p2, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p1, p2, v2}, Lcom/tikilive/ui/account/DeviceAdapter;-><init>(Landroid/app/Activity;Z)V

    .line 70
    iget-object p2, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mAccountActivity:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/account/AccountActivity;->getDevices()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/account/DeviceAdapter;->addDevices(Ljava/util/List;)V

    .line 71
    new-instance p2, Lcom/tikilive/ui/account/AccountDevicesFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/account/AccountDevicesFragment$1;-><init>(Lcom/tikilive/ui/account/AccountDevicesFragment;Lcom/tikilive/ui/account/DeviceAdapter;)V

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/account/DeviceAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 79
    iget-object p2, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountDevicesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/tikilive/ui/account/AccountDevicesFragment$2;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/account/AccountDevicesFragment$2;-><init>(Lcom/tikilive/ui/account/AccountDevicesFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
