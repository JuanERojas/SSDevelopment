.class public Lcom/tikilive/ui/video/NetworksActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "NetworksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/NetworksActivity$NetworkFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.NetworksActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

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
    iput v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mTotalVideos:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mNetworks:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mVideos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/NetworksActivity;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/NetworksActivity;->loadSpecificNetworkItems(I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/tikilive/ui/video/NetworksActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/video/NetworksActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/tikilive/ui/video/NetworksActivity;->mTotalVideos:I

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/NetworksActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mNetworks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/NetworksActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method private loadSpecificNetworkItems(I)V
    .locals 8

    const v0, 0x7f120186

    .line 190
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/NetworksActivity;->showLoadingFragment(I)V

    .line 191
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getItemsPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/NetworksActivity$5;

    invoke-direct {v6, p0, p1}, Lcom/tikilive/ui/video/NetworksActivity$5;-><init>(Lcom/tikilive/ui/video/NetworksActivity;I)V

    new-instance v7, Lcom/tikilive/ui/video/NetworksActivity$6;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/NetworksActivity$6;-><init>(Lcom/tikilive/ui/video/NetworksActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/tikilive/ui/backend/Api;->getItemsPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
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

    .line 72
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mNetworks:Ljava/util/List;

    return-object v0
.end method

.method public getTotalVideos()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mTotalVideos:I

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

    .line 76
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public loadNetworksRoot()V
    .locals 3

    const v0, 0x7f12017d

    .line 84
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/NetworksActivity;->showLoadingFragment(I)V

    .line 85
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideoNetworksRoot"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/NetworksActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/NetworksActivity$1;-><init>(Lcom/tikilive/ui/video/NetworksActivity;)V

    new-instance v2, Lcom/tikilive/ui/video/NetworksActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/NetworksActivity$2;-><init>(Lcom/tikilive/ui/video/NetworksActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getVideoNetworksRoot(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/NetworksActivity$3;

    invoke-direct {v6, p0, p2, p4}, Lcom/tikilive/ui/video/NetworksActivity$3;-><init>(Lcom/tikilive/ui/video/NetworksActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    new-instance v7, Lcom/tikilive/ui/video/NetworksActivity$4;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/NetworksActivity$4;-><init>(Lcom/tikilive/ui/video/NetworksActivity;)V

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tikilive/ui/backend/Api;->getVideosPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 53
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity;->mTabNetworks:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworksActivity;->mTabNetworks:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f12022a

    .line 55
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworksActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworksActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworksActivity;->loadNetworksRoot()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    .line 62
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryNetworks()V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/NetworksActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onStop()V

    return-void
.end method
