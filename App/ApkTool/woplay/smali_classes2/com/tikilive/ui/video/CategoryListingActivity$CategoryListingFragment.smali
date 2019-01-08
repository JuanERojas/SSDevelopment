.class public Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;
.super Landroid/support/v4/app/Fragment;
.source "CategoryListingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/CategoryListingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryListingFragment"
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

.field private mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;

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

    .line 328
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mTotalVideos:I

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Lcom/tikilive/ui/video/CategoryListingActivity;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)I
    .locals 0

    .line 308
    iget p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mSelectedCategoryId:I

    return p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)Ljava/util/List;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;)I
    .locals 0

    .line 308
    iget p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mTotalVideos:I

    return p0
.end method

.method public static newInstance(I)Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;
    .locals 3

    .line 321
    new-instance v0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;-><init>()V

    .line 322
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_category_id"

    .line 323
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 333
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 335
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/CategoryListingActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 337
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of CategoryListingActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 343
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 345
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/CategoryListingActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 347
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of CategoryListingActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selected_category_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mSelectedCategoryId:I

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

    .line 362
    invoke-virtual {v1, v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 364
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->getCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategories:Ljava/util/List;

    .line 365
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->getVideos()Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mVideos:Ljava/util/List;

    .line 366
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->getTotalVideos()I

    move-result v0

    iput v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mTotalVideos:I

    const v0, 0x7f0a0257

    .line 368
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/support/v7/widget/RecyclerView;

    .line 369
    new-instance v12, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v12, v0}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 371
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategories:Ljava/util/List;

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 372
    :goto_0
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mVideos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    const v0, 0x7f0a0143

    .line 374
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0139

    .line 375
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    if-eqz v14, :cond_2

    .line 379
    iget v1, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mTotalVideos:I

    iget-object v3, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :goto_2
    move v7, v1

    goto :goto_3

    .line 381
    :cond_2
    iget v1, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mTotalVideos:I

    goto :goto_2

    :goto_3
    if-eqz v14, :cond_3

    if-nez v15, :cond_3

    const v1, 0x7f10000d

    goto :goto_4

    :cond_3
    if-nez v14, :cond_4

    const v1, 0x7f10000e

    goto :goto_4

    :cond_4
    const v1, 0x7f10000b

    :goto_4
    if-nez v14, :cond_5

    if-eqz v15, :cond_9

    .line 394
    :cond_5
    iget-object v3, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategoryListingActivity:Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/video/CategoryListingActivity;->getBreadcrumbs()Ljava/util/List;

    move-result-object v3

    .line 395
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 396
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tikilive/ui/model/VideoCategory;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v14, :cond_6

    if-nez v15, :cond_6

    const v4, 0x7f120123

    .line 398
    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-virtual {v8, v4, v5}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    if-nez v14, :cond_7

    const v4, 0x7f120124

    .line 400
    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-virtual {v8, v4, v5}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    const v4, 0x7f120122

    .line 402
    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-virtual {v8, v4, v5}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 410
    new-instance v6, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$1;

    move-object v0, v6

    move-object v1, v8

    move-object v4, v11

    move v5, v14

    move-object v9, v6

    move v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$1;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;ZZI)V

    if-eqz v14, :cond_a

    .line 432
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    .line 433
    new-instance v2, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;

    invoke-direct {v2, v8, v1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$2;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Lcom/tikilive/ui/model/VideoCategory;)V

    invoke-virtual {v12, v1, v9, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addCategory(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_a
    if-eqz v15, :cond_b

    .line 446
    iget-object v0, v8, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Video;

    .line 447
    new-instance v2, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$3;

    invoke-direct {v2, v8, v1}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$3;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v12, v1, v9, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 460
    :cond_b
    new-instance v0, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 461
    invoke-virtual {v11, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 462
    new-instance v1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 462
    invoke-virtual {v11, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 465
    invoke-virtual {v11, v13}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 466
    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 468
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;

    invoke-direct {v2, v8, v11}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$4;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 479
    new-instance v1, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;

    invoke-direct {v1, v8, v0, v12, v9}, Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment$5;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    if-nez v14, :cond_c

    if-nez v15, :cond_c

    const v0, 0x7f0a0360

    .line 510
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 511
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a035f

    .line 513
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 514
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    invoke-virtual {v11, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_c
    return-object v10
.end method
