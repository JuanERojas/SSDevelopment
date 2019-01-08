.class public Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/VideoLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkViewHolder"
.end annotation


# instance fields
.field public mCategoryImage:Landroid/widget/ImageView;

.field public mCategoryTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01e2

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01e0

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 183
    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p2}, Lcom/tikilive/ui/model/VideoCategory;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "defaults/"

    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 187
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    iget-object p2, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 191
    :cond_0
    iget-object p2, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    const v0, 0x7f080328

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_0
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;
    .locals 3

    .line 176
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d00d2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryAdapter$NetworkViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
