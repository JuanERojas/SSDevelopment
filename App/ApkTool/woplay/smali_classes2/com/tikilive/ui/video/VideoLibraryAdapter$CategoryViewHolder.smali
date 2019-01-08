.class public Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/VideoLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryViewHolder"
.end annotation


# instance fields
.field public mCategoryImage:Landroid/widget/ImageView;

.field public mCategoryTitle:Landroid/widget/TextView;

.field public mCategoryVideoCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0067

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0066

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0068

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryVideoCount:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 139
    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "defaults/"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    const v1, 0x7f080328

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_0
    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getVideoCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryVideoCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f100001

    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getVideoCount()I

    move-result v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getVideoCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryVideoCount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getCategoryCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 153
    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryVideoCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v3, 0x7f100000

    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getCategoryCount()I

    move-result v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getCategoryCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryVideoCount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_2
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->mCategoryVideoCount:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :goto_1
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p4, :cond_3

    .line 160
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;
    .locals 3

    .line 132
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d00d1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryAdapter$CategoryViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
