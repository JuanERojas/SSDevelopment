.class public Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PackageChannelsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
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
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mActivity:Landroid/app/Activity;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/tikilive/ui/model/Channel;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->onBindViewHolder(Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mChannels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/model/Channel;

    .line 52
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;
    .locals 3

    .line 42
    new-instance p2, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;->mActivity:Landroid/app/Activity;

    .line 43
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b9

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;Landroid/view/View;)V

    return-object p2
.end method
