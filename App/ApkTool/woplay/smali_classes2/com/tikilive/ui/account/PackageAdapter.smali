.class public Lcom/tikilive/ui/account/PackageAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mItems:Ljava/util/List;
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

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter;->mActivity:Landroid/app/Activity;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/PackageAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/tikilive/ui/model/Package;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/PackageAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {p0}, Lcom/tikilive/ui/account/PackageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    invoke-virtual {p0}, Lcom/tikilive/ui/account/PackageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/account/PackageAdapter;->onBindViewHolder(Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;I)V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/model/Package;

    .line 59
    iget-object v0, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageImage:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 65
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getType()Lcom/tikilive/ui/model/Package$Type;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Package$Type;->GROUP:Lcom/tikilive/ui/model/Package$Type;

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    const v1, 0x7f1201ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    const v1, 0x7f120095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    const v1, 0x7f1201eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    const v1, 0x7f1201e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    :goto_0
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    .line 80
    iget-object p1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    const p2, 0x7f120111

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 82
    :cond_3
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 84
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPeriod()Lcom/tikilive/ui/model/Package$Period;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Package$Period;->DAY:Lcom/tikilive/ui/model/Package$Period;

    if-ne v0, v1, :cond_4

    .line 85
    iget-object p1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " /day"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 87
    :cond_4
    iget-object p1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " /month"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 90
    :cond_5
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPeriod()Lcom/tikilive/ui/model/Package$Period;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Package$Period;->DAY:Lcom/tikilive/ui/model/Package$Period;

    if-ne v0, v1, :cond_6

    .line 91
    iget-object p1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getLength()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " days"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :cond_6
    iget-object p1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getLength()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " months"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :cond_7
    iget-object p1, p1, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Package;->getPrice()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/account/PackageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;
    .locals 3

    .line 48
    new-instance p2, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tikilive/ui/account/PackageAdapter;->mActivity:Landroid/app/Activity;

    .line 49
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001c

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/account/PackageAdapter;Landroid/view/View;)V

    return-object p2
.end method
