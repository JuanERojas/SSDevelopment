.class public Lcom/tikilive/ui/channel/ChannelsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChannelsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;",
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

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
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


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mActivity:Landroid/app/Activity;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mOnClickListeners:Ljava/util/List;

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelsAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/tikilive/ui/model/Channel;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelsAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

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
    check-cast p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelsAdapter;->onBindViewHolder(Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Channel;

    .line 61
    iget-object v1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 67
    iget-object v1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    .line 70
    iget-object v2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    .line 73
    iget-object v1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeLive:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeRadio:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeTve:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeCatchUp:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeSling:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 82
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeLive:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeRadio:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeTve:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeCatchUp:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeSling:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeLive:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeRadio:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeTve:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeCatchUp:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeSling:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isCatchUpTv()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 94
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeLive:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeRadio:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeTve:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeCatchUp:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeSling:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeLive:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeRadio:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeTve:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object p2, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeCatchUp:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeSling:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;
    .locals 3

    .line 50
    new-instance p2, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelsAdapter;->mActivity:Landroid/app/Activity;

    .line 51
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002e

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/channel/ChannelsAdapter;Landroid/view/View;)V

    return-object p2
.end method
