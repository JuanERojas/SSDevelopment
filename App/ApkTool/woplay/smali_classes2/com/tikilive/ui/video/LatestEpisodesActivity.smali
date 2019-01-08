.class public Lcom/tikilive/ui/video/LatestEpisodesActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "LatestEpisodesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/LatestEpisodesActivity$LatestEpisodesFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.LatestEpisodesActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

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

    .line 37
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mTotalVideos:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mVideos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/LatestEpisodesActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/video/LatestEpisodesActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mTotalVideos:I

    return p1
.end method


# virtual methods
.method public getTotalVideos()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mTotalVideos:I

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

    .line 87
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getLatestVideoEpisodes"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/tikilive/ui/video/LatestEpisodesActivity$2;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    new-instance p3, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$3;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity;)V

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tikilive/ui/backend/Api;->getLatestVideoEpisodes(IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 52
    iget-object p1, p0, Lcom/tikilive/ui/video/LatestEpisodesActivity;->mTabLatestEpisodes:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f120229

    .line 53
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    const p1, 0x7f12017b

    .line 54
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->showLoadingFragment(I)V

    .line 55
    new-instance p1, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/video/LatestEpisodesActivity$1;-><init>(Lcom/tikilive/ui/video/LatestEpisodesActivity;)V

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1, p1}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->loadLatestEpisodes(IILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/LatestEpisodesActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onStop()V

    return-void
.end method
