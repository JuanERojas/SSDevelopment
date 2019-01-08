.class public Lcom/tikilive/ui/video/VideoDetailsActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/VideoDetailsActivity$PopularEpisodesFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$SearchResultsFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$PopularFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;,
        Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field public static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final EXTRA_LATEST_EPISODES:Ljava/lang/String; = "latest_episodes"

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "network_id"

.field public static final EXTRA_POPULAR_EPISODES:Ljava/lang/String; = "popular_episodes"

.field public static final EXTRA_POPULAR_TAB:Ljava/lang/String; = "popular_tab"

.field public static final EXTRA_SEARCH_QUERY:Ljava/lang/String; = "search_query"

.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.VideoDetailsActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mBreadcrumbsTitle:Landroid/widget/TextView;

.field private mLatestEpisodes:Z

.field private mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

.field private mPopularEpisodes:Z

.field private mPopularTabRequested:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSelectedCategoryId:I

.field private mSelectedNetworkId:I

.field private mSelectedVideo:Lcom/tikilive/ui/model/Video;

.field private mSelectedVideoId:I

.field private mTabAllEpisodes:Landroid/widget/TextView;

.field private mTabAllVideos:Landroid/widget/TextView;

.field private mTabLatestEpisodes:Landroid/widget/TextView;

.field private mTabPopularContent:Landroid/widget/TextView;

.field private mTabPopularEpisodes:Landroid/widget/TextView;

.field private mTabSearch:Landroid/widget/FrameLayout;

.field private mTabSearchResults:Landroid/widget/TextView;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularEpisodes:Z

    .line 70
    iput-boolean v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLatestEpisodes:Z

    .line 85
    iput v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTotalVideos:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mVideos:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/VideoDetailsActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    return p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/video/VideoDetailsActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showAllVideosFragment()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showAllEpisodesFragment()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showSearchResultsFragment()V

    return-void
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLatestEpisodes:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showLatestEpisodesFragment()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularEpisodes:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showPopularEpisodesFragment()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->hideLoadingFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/video/VideoDetailsActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedNetworkId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/model/Video;)Lcom/tikilive/ui/model/Video;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/tikilive/ui/video/VideoDetailsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tikilive/ui/video/VideoDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/tikilive/ui/video/VideoDetailsActivity;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTotalVideos:I

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSelectedVideoDetails()Lcom/tikilive/ui/model/Video;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/VideoDetailsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/video/VideoDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showLoadingFragment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/video/VideoDetailsActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularTabRequested:Z

    return p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/video/VideoDetailsActivity;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showLoadingFragment(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showVideoDetailsFragment()V

    return-void
.end method

.method static synthetic access$900(Lcom/tikilive/ui/video/VideoDetailsActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showPopularFragment()V

    return-void
.end method

.method private getSelectedVideoDetails()Lcom/tikilive/ui/model/Video;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object v0
.end method

.method private hideLoadingFragment()V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    .line 936
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private setBreadcrumbsTitle(Ljava/lang/String;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbsTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showAllEpisodesFragment()V
    .locals 3

    .line 381
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 385
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showAllVideosFragment()V
    .locals 3

    .line 372
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$AllVideosFragment;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 376
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showLatestEpisodesFragment()V
    .locals 3

    .line 408
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$LatestEpisodesFragment;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 412
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showLoadingFragment(I)V
    .locals 0

    .line 928
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showLoadingFragment(Ljava/lang/String;)V

    return-void
.end method

.method private showLoadingFragment(Ljava/lang/String;)V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    if-nez v0, :cond_0

    .line 910
    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setMessage(Ljava/lang/String;)V

    .line 914
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->setLogoHidden(Z)V

    .line 915
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->setTaglineHidden(Z)V

    .line 916
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->setAlternateMessage(Z)V

    .line 918
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 921
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a008e

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    .line 922
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method private showPopularEpisodesFragment()V
    .locals 3

    .line 417
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$PopularEpisodesFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$PopularEpisodesFragment;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 421
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showPopularFragment()V
    .locals 3

    .line 390
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$PopularFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$PopularFragment;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 394
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showSearchResultsFragment()V
    .locals 3

    .line 399
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$SearchResultsFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$SearchResultsFragment;

    move-result-object v0

    .line 400
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 403
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private showVideoDetailsFragment()V
    .locals 3

    .line 363
    invoke-static {}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0358

    .line 367
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public getBreadcrumbsTitle(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 433
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/VideoCategory;

    const-string v1, " / "

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p1}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCategoryId()I
    .locals 1

    .line 893
    iget v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    return v0
.end method

.method public getSelectedNetworkId()I
    .locals 1

    .line 897
    iget v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedNetworkId:I

    return v0
.end method

.method public getTotalVideos()I
    .locals 1

    .line 889
    iget v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTotalVideos:I

    return v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public loadBreadcrumbs(IZLcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideoCategoryParents"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$9;

    invoke-direct {v1, p0, p2, p3}, Lcom/tikilive/ui/video/VideoDetailsActivity$9;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;ZLcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    new-instance p2, Lcom/tikilive/ui/video/VideoDetailsActivity$10;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$10;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/tikilive/ui/backend/Api;->getVideoCategoryParents(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getLatestVideoEpisodes"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$17;

    invoke-direct {v1, p0, p1, p3}, Lcom/tikilive/ui/video/VideoDetailsActivity$17;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    new-instance p3, Lcom/tikilive/ui/video/VideoDetailsActivity$18;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$18;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tikilive/ui/backend/Api;->getLatestVideoEpisodes(IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadPopularEpisodes(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoEpisodes"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$19;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/video/VideoDetailsActivity$20;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$20;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/tikilive/ui/backend/Api;->getPopularVideoEpisodes(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadPopularVideos(ILcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$13;

    invoke-direct {v1, p0, p2}, Lcom/tikilive/ui/video/VideoDetailsActivity$13;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    new-instance p2, Lcom/tikilive/ui/video/VideoDetailsActivity$14;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$14;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/tikilive/ui/backend/Api;->getPopularVideosPerCategory(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadSearchResults(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:searchVideos"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    new-instance v2, Lcom/tikilive/ui/video/VideoDetailsActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$15;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/video/VideoDetailsActivity$16;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$16;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/tikilive/ui/backend/Api;->searchVideos(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1200c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 770
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-virtual {p0, p1, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 8

    .line 606
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/VideoDetailsActivity$11;

    invoke-direct {v6, p0, p2, p4}, Lcom/tikilive/ui/video/VideoDetailsActivity$11;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    new-instance v7, Lcom/tikilive/ui/video/VideoDetailsActivity$12;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$12;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tikilive/ui/backend/Api;->getVideosPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadVideoDetails(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideo"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    new-instance v2, Lcom/tikilive/ui/video/VideoDetailsActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$7;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/video/VideoDetailsActivity$8;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$8;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/tikilive/ui/backend/Api;->getVideo(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 98
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const p1, 0x7f0a02e3

    .line 102
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllVideos:Landroid/widget/TextView;

    const p1, 0x7f0a02e2

    .line 103
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllEpisodes:Landroid/widget/TextView;

    const p1, 0x7f0a02ec

    .line 104
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularContent:Landroid/widget/TextView;

    const p1, 0x7f0a02f5

    .line 105
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearchResults:Landroid/widget/TextView;

    const p1, 0x7f0a02f4

    .line 106
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    const p1, 0x7f0a02e8

    .line 107
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabLatestEpisodes:Landroid/widget/TextView;

    const p1, 0x7f0a02ed

    .line 108
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularEpisodes:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    .line 111
    iget p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    if-nez p1, :cond_1

    .line 112
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->finish()V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    .line 118
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "network_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedNetworkId:I

    .line 120
    iget p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedNetworkId:I

    if-lez p1, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "search_query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "popular_episodes"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularEpisodes:Z

    .line 125
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "latest_episodes"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLatestEpisodes:Z

    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "popular_tab"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularTabRequested:Z

    .line 128
    :goto_1
    iget p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    const/4 v0, 0x1

    if-lez p1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllVideos:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularTabRequested:Z

    if-eqz p1, :cond_4

    .line 132
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllVideos:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 136
    :cond_5
    iget p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedNetworkId:I

    if-lez p1, :cond_7

    .line 137
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularTabRequested:Z

    if-eqz p1, :cond_6

    .line 140
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 142
    :cond_6
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 145
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearchResults:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearchResults:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 147
    :cond_8
    iget-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLatestEpisodes:Z

    if-eqz p1, :cond_9

    .line 148
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabLatestEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabLatestEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 150
    :cond_9
    iget-boolean p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularEpisodes:Z

    if-eqz p1, :cond_a

    .line 151
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_a
    :goto_2
    const p1, 0x7f0a004f

    .line 155
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mBreadcrumbsTitle:Landroid/widget/TextView;

    .line 157
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllVideos:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabAllEpisodes:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabPopularContent:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$3;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$4;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/application/MyApplication;

    .line 208
    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$5;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$5;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/application/MyApplication;->processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 219
    :catch_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    const p1, 0x7f120188

    .line 222
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->showLoadingFragment(I)V

    .line 223
    new-instance p1, Lcom/tikilive/ui/video/VideoDetailsActivity$6;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$6;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity;)V

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->loadVideoDetails(Lcom/tikilive/ui/video/VideoDetailsActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 352
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideo"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideoCategoryParents"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:searchVideos"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getLatestVideoEpisodes"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoCategories"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 327
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 328
    iget v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    if-lez v0, :cond_1

    .line 329
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularTabRequested:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    iget v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsPopularTabVideos(II)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    iget v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsAllVideos(II)V

    goto :goto_0

    .line 334
    :cond_1
    iget v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedNetworkId:I

    if-lez v0, :cond_3

    .line 335
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularTabRequested:Z

    if-eqz v0, :cond_2

    .line 336
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    iget v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsPopularTabEpisodes(II)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    iget v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedCategoryId:I

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsAllEpisodes(II)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 341
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsSearchResults(ILjava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_4
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mLatestEpisodes:Z

    if-eqz v0, :cond_5

    .line 343
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsLatestEpisodes(I)V

    goto :goto_0

    .line 344
    :cond_5
    iget-boolean v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mPopularEpisodes:Z

    if-eqz v0, :cond_6

    .line 345
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity;->mSelectedVideoId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryVideoDetailsPopularEpisodes(I)V

    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 942
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 943
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 945
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 946
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 948
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 949
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method
