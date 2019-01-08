.class public Lcom/tikilive/ui/upgrade/ChoosePackageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChoosePackageFragment.java"


# instance fields
.field private mActivity:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

.field private mArrowLeft:Landroid/widget/TextView;

.field private mArrowRight:Landroid/widget/TextView;

.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mPackages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mActivity:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->updateArrows()V

    return-void
.end method

.method public static newInstance()Lcom/tikilive/ui/upgrade/ChoosePackageFragment;
    .locals 1

    .line 41
    new-instance v0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;-><init>()V

    return-object v0
.end method

.method private updateArrows()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mArrowLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mArrowLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 150
    iget-object v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 151
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mArrowRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mArrowRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 48
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mActivity:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    .line 49
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mActivity:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getPackages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mPackages:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 51
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must extend ChoosePackageActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0050

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a030f

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mActivity:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSelectedChannelId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const v0, 0x7f120094

    .line 68
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f12010c

    .line 70
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const v4, 0x7f120028

    invoke-virtual {p0, v4}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p2, 0x7f0a02dd

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120277

    .line 73
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://ver.woplay.tv"

    const-string v6, "http://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/offers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0039

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mArrowLeft:Landroid/widget/TextView;

    const p2, 0x7f0a003a

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mArrowRight:Landroid/widget/TextView;

    const p2, 0x7f0a024c

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 80
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 81
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 84
    new-instance p2, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;-><init>(Landroid/app/Activity;)V

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    new-instance v0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V

    .line 95
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tikilive/ui/model/Package;

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p2, v2, v3, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->addItem(Lcom/tikilive/ui/model/Package;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$2;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 110
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$3;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const p2, 0x7f0a003f

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 118
    new-instance p2, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$4;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method
