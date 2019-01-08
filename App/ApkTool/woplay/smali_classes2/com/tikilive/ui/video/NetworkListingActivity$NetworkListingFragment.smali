.class public Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;
.super Landroid/support/v4/app/Fragment;
.source "NetworkListingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/NetworkListingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkListingFragment"
.end annotation


# static fields
.field private static final ARG_SELECTED_CATEGORY_ID:Ljava/lang/String; = "selected_category_id"


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;

.field private mSelectedCategoryId:I

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

    .line 319
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 305
    iput v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mTotalVideos:I

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)Lcom/tikilive/ui/video/NetworkListingActivity;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mSelectedCategoryId:I

    return p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)Ljava/util/List;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mTotalVideos:I

    return p0
.end method

.method public static newInstance(I)Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;
    .locals 3

    .line 312
    new-instance v0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;-><init>()V

    .line 313
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_category_id"

    .line 314
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 324
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 326
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/NetworkListingActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 328
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of NetworkListingActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 334
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 336
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/NetworkListingActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 338
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of NetworkListingActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 344
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 345
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selected_category_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mSelectedCategoryId:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const/4 p3, 0x0

    const v0, 0x7f0d005c

    .line 353
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/NetworkListingActivity;->getNetworks()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mCategories:Ljava/util/List;

    .line 356
    iget-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/NetworkListingActivity;->getVideos()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mVideos:Ljava/util/List;

    .line 357
    iget-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/NetworkListingActivity;->getTotalVideos()I

    move-result p2

    iput p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mTotalVideos:I

    const p2, 0x7f0a0257

    .line 359
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 360
    new-instance v8, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v8, v0}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 362
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mCategories:Ljava/util/List;

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mVideos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const v0, 0x7f0a0143

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0139

    .line 366
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 370
    iget v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mTotalVideos:I

    iget-object v3, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :goto_2
    move v7, v1

    goto :goto_3

    .line 372
    :cond_2
    iget v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mTotalVideos:I

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_3

    if-nez v11, :cond_3

    const v1, 0x7f10000c

    goto :goto_4

    :cond_3
    if-nez v10, :cond_4

    const v1, 0x7f10000e

    goto :goto_4

    :cond_4
    const v1, 0x7f10000b

    :goto_4
    if-nez v10, :cond_5

    if-eqz v11, :cond_7

    .line 385
    :cond_5
    iget-object v3, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mNetworkListingActivity:Lcom/tikilive/ui/video/NetworkListingActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/video/NetworkListingActivity;->getBreadcrumbs()Ljava/util/List;

    move-result-object v3

    .line 386
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 387
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tikilive/ui/model/VideoCategory;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v3

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_6
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_7
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 395
    new-instance p3, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;

    move-object v0, p3

    move-object v1, p0

    move-object v4, p2

    move v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;ZZI)V

    if-eqz v10, :cond_8

    .line 417
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    .line 418
    new-instance v2, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$2;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;Lcom/tikilive/ui/model/VideoCategory;)V

    invoke-virtual {v8, v1, p3, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addNetwork(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_8
    if-eqz v11, :cond_9

    .line 431
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Video;

    .line 432
    new-instance v2, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$3;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v8, v1, p3, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 445
    :cond_9
    new-instance v0, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 446
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 447
    new-instance v1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 448
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 447
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 450
    invoke-virtual {p2, v9}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 451
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 453
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$4;

    invoke-direct {v2, p0, p2}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$4;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 464
    new-instance v1, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;

    invoke-direct {v1, p0, v0, v8, p3}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$5;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method
