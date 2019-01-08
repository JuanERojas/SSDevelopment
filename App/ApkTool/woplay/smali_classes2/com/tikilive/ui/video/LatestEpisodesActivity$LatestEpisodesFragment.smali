.class public Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;
.super Landroid/support/v4/app/Fragment;
.source "LatestEpisodesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/LatestEpisodesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatestEpisodesFragment"
.end annotation


# instance fields
.field private mLatestEpisodesActivity:Lcom/tikilive/ui/video/LatestEpisodesActivity;

.field private mTotalVideos:I

.field private mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    return-void
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)I
    .locals 0

    .line 176
    iget p0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    return p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Lcom/tikilive/ui/video/LatestEpisodesActivity;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mLatestEpisodesActivity:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;)Ljava/util/List;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;
    .locals 1

    .line 184
    new-instance v0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 194
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/LatestEpisodesActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mLatestEpisodesActivity:Lcom/tikilive/ui/video/LatestEpisodesActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 196
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of LatestEpisodesActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 204
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/LatestEpisodesActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mLatestEpisodesActivity:Lcom/tikilive/ui/video/LatestEpisodesActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 206
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of LatestEpisodesActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    const v0, 0x7f0d005c

    .line 213
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mLatestEpisodesActivity:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getVideos()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mVideos:Ljava/util/List;

    .line 216
    iget-object p2, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mLatestEpisodesActivity:Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getTotalVideos()I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    const p2, 0x7f0a0257

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 219
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 221
    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mVideos:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mVideos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7f0a0143

    .line 223
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0139

    .line 224
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f10000e

    if-eqz v1, :cond_1

    const v6, 0x7f120229

    .line 227
    invoke-virtual {p0, v6}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v6, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p3

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v6, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mTotalVideos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p3

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v5, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$1;

    invoke-direct {v5, p0, v4, v3, p2}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$1;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v1, :cond_2

    .line 247
    iget-object v3, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->mVideos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tikilive/ui/model/Video;

    .line 248
    new-instance v6, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$2;

    invoke-direct {v6, p0, v4}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$2;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v0, v4, v5, v6}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 261
    :cond_2
    new-instance v3, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 262
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 263
    new-instance v4, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 264
    invoke-virtual {p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0702ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v6}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 263
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 266
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 267
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 269
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v4, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$3;

    invoke-direct {v4, p0, p2}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$3;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 280
    new-instance v2, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;

    invoke-direct {v2, p0, v3, v0, v5}, Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment$4;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    if-nez v1, :cond_3

    const v0, 0x7f0a0360

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a035f

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1201b3

    .line 317
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 318
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_3
    return-object p1
.end method
