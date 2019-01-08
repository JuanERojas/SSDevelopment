.class public Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/VideoLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoViewHolder"
.end annotation


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mVideoDuration:Landroid/widget/TextView;

.field public mVideoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 204
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0364

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->mVideoTitle:Landroid/widget/TextView;

    const v0, 0x7f0a035c

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a035b

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->mVideoDuration:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/support/v7/app/AppCompatActivity;Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 217
    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->mVideoTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 219
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    iget-object v0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 221
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 222
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->mVideoDuration:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getDurationFormatted()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p4, :cond_0

    .line 225
    iget-object p0, p1, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;
    .locals 3

    .line 211
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d00d3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryAdapter$VideoViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
