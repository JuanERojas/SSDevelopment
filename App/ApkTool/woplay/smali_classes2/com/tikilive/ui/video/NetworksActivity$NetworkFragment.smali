.class public Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;
.super Landroid/support/v4/app/Fragment;
.source "NetworksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/NetworksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkFragment"
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

.field private mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;

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

    .line 285
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mTotalVideos:I

    return-void
.end method

.method static synthetic access$500(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;)Lcom/tikilive/ui/video/NetworksActivity;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;)I
    .locals 0

    .line 265
    iget p0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mSelectedCategoryId:I

    return p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;)Ljava/util/List;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;)I
    .locals 0

    .line 265
    iget p0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mTotalVideos:I

    return p0
.end method

.method public static newInstance(I)Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;
    .locals 3

    .line 278
    new-instance v0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;-><init>()V

    .line 279
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_category_id"

    .line 280
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 292
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/NetworksActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 294
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of NetworksActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 300
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 302
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/NetworksActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 304
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of NetworksActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selected_category_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mSelectedCategoryId:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v8, p0

    const/4 v9, 0x0

    const v0, 0x7f0d005c

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 319
    invoke-virtual {v1, v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 321
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/NetworksActivity;->getNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mCategories:Ljava/util/List;

    .line 322
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/NetworksActivity;->getVideos()Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mVideos:Ljava/util/List;

    .line 323
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mNetworksActivity:Lcom/tikilive/ui/video/NetworksActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/NetworksActivity;->getTotalVideos()I

    move-result v0

    iput v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mTotalVideos:I

    const v0, 0x7f0a0257

    .line 325
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/support/v7/widget/RecyclerView;

    .line 326
    new-instance v12, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v12, v0}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 328
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mCategories:Ljava/util/List;

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 329
    :goto_0
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mVideos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    const v0, 0x7f0a0143

    .line 331
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0139

    .line 332
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    if-eqz v14, :cond_2

    .line 336
    iget v1, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mTotalVideos:I

    iget-object v3, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :goto_2
    move v7, v1

    goto :goto_3

    .line 338
    :cond_2
    iget v1, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mTotalVideos:I

    goto :goto_2

    :goto_3
    if-eqz v14, :cond_3

    if-nez v15, :cond_3

    const v1, 0x7f10000c

    goto :goto_4

    :cond_3
    if-nez v14, :cond_4

    const v1, 0x7f10000e

    goto :goto_4

    :cond_4
    const v1, 0x7f10000b

    :goto_4
    if-nez v14, :cond_5

    if-eqz v15, :cond_6

    :cond_5
    const v3, 0x7f120024

    .line 351
    invoke-virtual {v8, v3}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 357
    new-instance v6, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$1;

    move-object v0, v6

    move-object v1, v8

    move-object v4, v11

    move v5, v14

    move-object v9, v6

    move v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$1;-><init>(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;ZZI)V

    if-eqz v14, :cond_7

    .line 379
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    .line 380
    new-instance v2, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$2;

    invoke-direct {v2, v8, v1}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$2;-><init>(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;Lcom/tikilive/ui/model/VideoCategory;)V

    invoke-virtual {v12, v1, v9, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addNetwork(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_7
    if-eqz v15, :cond_8

    .line 393
    iget-object v0, v8, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Video;

    .line 394
    new-instance v2, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$3;

    invoke-direct {v2, v8, v1}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$3;-><init>(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v12, v1, v9, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 407
    :cond_8
    new-instance v0, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 408
    invoke-virtual {v11, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 409
    new-instance v1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 409
    invoke-virtual {v11, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 412
    invoke-virtual {v11, v13}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 413
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 415
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$4;

    invoke-direct {v2, v8, v11}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$4;-><init>(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 426
    new-instance v1, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$5;

    invoke-direct {v1, v8, v0, v12, v9}, Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment$5;-><init>(Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    if-nez v14, :cond_9

    if-nez v15, :cond_9

    const v0, 0x7f0a0360

    .line 457
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a035f

    .line 460
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 461
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    invoke-virtual {v11, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_9
    return-object v10
.end method
