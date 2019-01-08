.class public Lcom/tikilive/ui/video/PopularContentActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "PopularContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/PopularContentActivity$PopularContentFragment;,
        Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.PopularContentActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

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

    .line 41
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mCategories:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mNetworks:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mVideos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity;->loadPopularEpisodes(Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity;->loadPopularNetworks(Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity;->loadPopularCategories(Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/tikilive/ui/video/PopularContentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/PopularContentActivity;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/video/PopularContentActivity;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mNetworks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/video/PopularContentActivity;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method private loadPopularCategories(Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoCategories"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/PopularContentActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$3;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/video/PopularContentActivity$4;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/PopularContentActivity$4;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/tikilive/ui/backend/Api;->getPopularVideoCategories(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loadPopularContent()V
    .locals 3

    const v0, 0x7f120180

    .line 95
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/PopularContentActivity;->showLoadingFragment(I)V

    .line 96
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/PopularContentActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/PopularContentActivity$1;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;)V

    new-instance v2, Lcom/tikilive/ui/video/PopularContentActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/PopularContentActivity$2;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getVideoNetworksRoot(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loadPopularEpisodes(Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoEpisodes"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/PopularContentActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$7;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/video/PopularContentActivity$8;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/PopularContentActivity$8;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/tikilive/ui/backend/Api;->getPopularVideoEpisodes(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loadPopularNetworks(Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoNetworks"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/PopularContentActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity$5;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;Lcom/tikilive/ui/video/PopularContentActivity$OnLoadCompleteListener;)V

    new-instance p1, Lcom/tikilive/ui/video/PopularContentActivity$6;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/PopularContentActivity$6;-><init>(Lcom/tikilive/ui/video/PopularContentActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/tikilive/ui/backend/Api;->getPopularVideoNetworks(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mNetworks:Ljava/util/List;

    return-object v0
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

    .line 91
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/tikilive/ui/video/PopularContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 57
    iget-object p1, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mTabPopular:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f12022b

    .line 58
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/PopularContentActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/tikilive/ui/video/PopularContentActivity;->loadPopularContent()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onPause()V

    .line 72
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoCategories"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoNetworks"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/tikilive/ui/video/PopularContentActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPopularVideoEpisodes"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryPopularContent()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/PopularContentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onStop()V

    return-void
.end method
