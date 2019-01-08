.class public Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackageDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelViewHolder"
.end annotation


# instance fields
.field public mChannelImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0154

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;->mChannelImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;Lcom/tikilive/ui/model/Channel;)V
    .locals 1

    .line 95
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "defaults/"

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 98
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;->mChannelImage:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p1, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;->mChannelImage:Landroid/widget/ImageView;

    const p2, 0x7f080328

    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;
    .locals 3

    .line 91
    new-instance v0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d00bb

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$ChannelViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
