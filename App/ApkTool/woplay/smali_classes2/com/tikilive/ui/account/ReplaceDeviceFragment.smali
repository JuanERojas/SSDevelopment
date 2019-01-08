.class public Lcom/tikilive/ui/account/ReplaceDeviceFragment;
.super Landroid/support/v4/app/Fragment;
.source "ReplaceDeviceFragment.java"


# instance fields
.field private mCurrentDevicesLinked:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)Lcom/tikilive/ui/account/ReplaceDeviceActivity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mCurrentDevicesLinked:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/account/ReplaceDeviceFragment;
    .locals 1

    .line 30
    new-instance v0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 36
    instance-of v0, p1, Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be an instance of ReplaceDeviceActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d004a

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00c0

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p2, 0x7f0a00c1

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 63
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getTotalDevices()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, 0x7f1200d1

    invoke-virtual {p0, v3, v2}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v2}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getTotalDevices()I

    move-result v2

    const v3, 0x7f100002

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getTotalDevices()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v2, 0x7f0a00a1

    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mCurrentDevicesLinked:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mCurrentDevicesLinked:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00c2

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f1201fc

    .line 70
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a024e

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 74
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-direct {p1, p2, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 75
    iget-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 78
    new-instance p1, Lcom/tikilive/ui/account/DeviceAdapter;

    iget-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-direct {p1, p2, v1}, Lcom/tikilive/ui/account/DeviceAdapter;-><init>(Landroid/app/Activity;Z)V

    .line 79
    iget-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mReplaceDeviceActivity:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getDevices()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/account/DeviceAdapter;->addDevices(Ljava/util/List;)V

    .line 80
    new-instance p2, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceFragment;Lcom/tikilive/ui/account/DeviceAdapter;)V

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/account/DeviceAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 88
    iget-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/tikilive/ui/account/ReplaceDeviceFragment$2;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/account/ReplaceDeviceFragment$2;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
