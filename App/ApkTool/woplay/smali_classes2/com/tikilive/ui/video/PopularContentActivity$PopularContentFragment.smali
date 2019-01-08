.class public Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;
.super Landroid/support/v4/app/Fragment;
.source "PopularContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/PopularContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularContentFragment"
.end annotation


# static fields
.field public static final MAX_ITEMS:I = 0x4


# instance fields
.field private mHeaderPopularCategoriesHeading:Landroid/widget/LinearLayout;

.field private mHeaderPopularEpisodesHeading:Landroid/widget/LinearLayout;

.field private mHeaderPopularNetworksHeading:Landroid/widget/LinearLayout;

.field private mPopularCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;

.field private mPopularEpisodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private mPopularNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;
    .locals 1

    .line 399
    new-instance v0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;-><init>()V

    return-object v0
.end method

.method private setupPopularCategories(Landroid/view/View;)Z
    .locals 13

    .line 455
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity;->getCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularCategories:Ljava/util/List;

    const v0, 0x7f0a0252

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 458
    new-instance v7, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v7, v1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 460
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularCategories:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const v1, 0x7f0a013a

    .line 462
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    .line 464
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v11, 0x4

    if-le p1, v11, :cond_1

    const/4 p1, 0x4

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10000d

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_2

    .line 474
    new-instance v12, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$1;

    move-object v1, v12

    move-object v2, p0

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$1;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;I)V

    :goto_1
    if-ge v8, p1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularCategories:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    .line 489
    new-instance v2, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$2;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Lcom/tikilive/ui/model/VideoCategory;)V

    invoke-virtual {v7, v1, v12, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addCategory(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 500
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mHeaderPopularCategoriesHeading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    :cond_3
    new-instance p1, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1, v11}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 505
    new-instance p1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 506
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 505
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 508
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 509
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 511
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$3;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return v10
.end method

.method private setupPopularEpisodes(Landroid/view/View;)Z
    .locals 12

    .line 586
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity;->getVideos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularEpisodes:Ljava/util/List;

    const v0, 0x7f0a0253

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 589
    new-instance v7, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v7, v1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 591
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularEpisodes:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularEpisodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const v1, 0x7f0a013d

    .line 593
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    .line 595
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularEpisodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x8

    if-le p1, v1, :cond_1

    const/16 p1, 0x8

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10000e

    invoke-virtual {v2, v4, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_2

    .line 605
    new-instance v11, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$6;

    move-object v1, v11

    move-object v2, p0

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$6;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;I)V

    :goto_1
    if-ge v8, p1, :cond_3

    .line 619
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularEpisodes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Video;

    .line 620
    new-instance v2, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$7;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v7, v1, v11, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 631
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mHeaderPopularEpisodesHeading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    :cond_3
    new-instance p1, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p1, v1, v2}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 635
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 636
    new-instance p1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 637
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 636
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 639
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 640
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return v10
.end method

.method private setupPopularNetworks(Landroid/view/View;)Z
    .locals 13

    .line 526
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/video/PopularContentActivity;->getNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularNetworks:Ljava/util/List;

    const v0, 0x7f0a0254

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 529
    new-instance v7, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v7, v1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 531
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularNetworks:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const v1, 0x7f0a0140

    .line 533
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    .line 535
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularNetworks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v11, 0x4

    if-le p1, v11, :cond_1

    const/4 p1, 0x4

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10000c

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 543
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_2

    .line 546
    new-instance v12, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$4;

    move-object v1, v12

    move-object v2, p0

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$4;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;I)V

    :goto_1
    if-ge v8, p1, :cond_3

    .line 560
    iget-object v1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularNetworks:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    .line 561
    new-instance v2, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment$5;-><init>(Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;Lcom/tikilive/ui/model/VideoCategory;)V

    invoke-virtual {v7, v1, v12, v2}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addNetwork(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 571
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mHeaderPopularNetworksHeading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    :cond_3
    new-instance p1, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1, v11}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 576
    new-instance p1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 577
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 579
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 580
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return v10
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 407
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 409
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/PopularContentActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 411
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of PopularContentActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 417
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 419
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/PopularContentActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 421
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of PopularContentActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d0058

    .line 428
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a013b

    .line 430
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mHeaderPopularCategoriesHeading:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0141

    .line 431
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mHeaderPopularNetworksHeading:Landroid/widget/LinearLayout;

    const p2, 0x7f0a013e

    .line 432
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mHeaderPopularEpisodesHeading:Landroid/widget/LinearLayout;

    .line 434
    iget-object p2, p0, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->mPopularContentActivity:Lcom/tikilive/ui/video/PopularContentActivity;

    const v0, 0x7f12022b

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tikilive/ui/video/PopularContentActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    .line 436
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->setupPopularCategories(Landroid/view/View;)Z

    move-result p2

    .line 437
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->setupPopularNetworks(Landroid/view/View;)Z

    move-result v0

    .line 438
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;->setupPopularEpisodes(Landroid/view/View;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const p2, 0x7f0a035e

    .line 442
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 443
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 444
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 445
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f0a035f

    .line 447
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 448
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-object p1
.end method
