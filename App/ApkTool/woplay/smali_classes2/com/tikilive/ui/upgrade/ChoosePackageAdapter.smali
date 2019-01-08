.class public Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChoosePackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mActivity:Landroid/app/Activity;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mOnClickListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;)Landroid/app/Activity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/tikilive/ui/model/Package;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItem(I)Lcom/tikilive/ui/model/Package;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Package;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->onBindViewHolder(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;I)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mPackages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Package;

    .line 59
    iget-object v1, p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object v1, p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    .line 69
    iget-object v2, p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    .line 72
    iget-object v1, p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance p2, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;-><init>(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Package;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Channel;

    .line 79
    invoke-virtual {p2, v1}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->addItem(Lcom/tikilive/ui/model/Channel;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p1, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageChannels:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;
    .locals 3

    .line 49
    new-instance p2, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->mActivity:Landroid/app/Activity;

    .line 50
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00bc

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;Landroid/view/View;)V

    return-object p2
.end method
