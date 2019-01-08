.class public Lcom/tikilive/ui/upgrade/PackageDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "PackageDetailsFragment.java"


# static fields
.field public static final ARG_PACKAGE_DESCRIPTION:Ljava/lang/String; = "package_description"

.field public static final ARG_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final ARG_PACKAGE_PRICE:Ljava/lang/String; = "package_price"


# instance fields
.field private mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

.field private mArrowLeft:Landroid/widget/TextView;

.field private mArrowRight:Landroid/widget/TextView;

.field private mCatchUpChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageDescription:Ljava/lang/String;

.field private mPackageId:I

.field private mPackageName:Ljava/lang/String;

.field private mPackagePrice:D

.field private mRadioChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Lcom/tikilive/ui/upgrade/PackageDetailsActivity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->updateArrows()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;D)Lcom/tikilive/ui/upgrade/PackageDetailsFragment;
    .locals 3

    .line 51
    new-instance v0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_id"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "package_name"

    .line 55
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "package_description"

    .line 56
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "package_price"

    .line 57
    invoke-virtual {v1, p0, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateArrows()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mArrowLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mArrowLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 221
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 222
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mArrowRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mArrowRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    .line 68
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getLiveChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getCatchUpChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getRadioChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 72
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must extend PackageDetailsActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 80
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    .line 81
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getLiveChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getCatchUpChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getRadioChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must extend PackageDetailsActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "package_id"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackageId:I

    .line 95
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "package_name"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackageName:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "package_description"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackageDescription:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "package_price"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackagePrice:D

    :cond_0
    const p3, 0x7f0d0057

    .line 101
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a030f

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackagePrice:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " /mo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00aa

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mPackageDescription:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0199

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Live Channels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0064

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Free\nCatchUp TV Channels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0243

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Radio Channels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 121
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const p2, 0x7f0a0040

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 125
    new-instance v0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$1;-><init>(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    const p2, 0x7f0a0039

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mArrowLeft:Landroid/widget/TextView;

    const p2, 0x7f0a003a

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mArrowRight:Landroid/widget/TextView;

    const p2, 0x7f0a024c

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 146
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    const/4 p1, 0x2

    .line 149
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 p1, 0x3

    .line 152
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 153
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 154
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 156
    new-instance p1, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mActivity:Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-direct {p1, v0}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 159
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_4
    if-lez v0, :cond_9

    :goto_1
    if-ge p2, v0, :cond_9

    .line 171
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, p2, :cond_5

    .line 172
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mLiveChannels:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p1, v1, v2}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->addChannel(Lcom/tikilive/ui/model/Channel;Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->addBlank()V

    .line 177
    :goto_2
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_6

    .line 178
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mCatchUpChannels:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p1, v1, v2}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->addChannel(Lcom/tikilive/ui/model/Channel;Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_3

    .line 180
    :cond_6
    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->addBlank()V

    .line 183
    :goto_3
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 184
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_7

    .line 185
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRadioChannels:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p1, v1, v2}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->addChannel(Lcom/tikilive/ui/model/Channel;Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_4

    .line 187
    :cond_7
    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;->addBlank()V

    :cond_8
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 193
    :cond_9
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 195
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$2;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$2;-><init>(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 203
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$3;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$3;-><init>(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
