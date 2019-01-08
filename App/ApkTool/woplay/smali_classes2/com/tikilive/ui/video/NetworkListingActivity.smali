.class public Lcom/tikilive/ui/video/NetworkListingActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "NetworkListingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.NetworkListingActivity"


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

.field mCategoryId:I

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

    .line 36
    invoke-direct {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mTotalVideos:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mNetworks:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mVideos:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mBreadcrumbs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/NetworkListingActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/video/NetworkListingActivity;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->loadSpecificNetworkItems(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/tikilive/ui/video/NetworkListingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/NetworkListingActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mNetworks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/NetworkListingActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tikilive/ui/video/NetworkListingActivity;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mTotalVideos:I

    return p1
.end method

.method private loadSpecificNetworkItems(I)V
    .locals 8

    const v0, 0x7f120186

    .line 151
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/NetworkListingActivity;->showLoadingFragment(I)V

    .line 152
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getItemsPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/NetworkListingActivity$3;

    invoke-direct {v6, p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity$3;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity;I)V

    new-instance v7, Lcom/tikilive/ui/video/NetworkListingActivity$4;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/NetworkListingActivity$4;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/tikilive/ui/backend/Api;->getItemsPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBreadcrumbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mBreadcrumbs:Ljava/util/List;

    return-object v0
.end method

.method public getBreadcrumbsTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    const-string v2, " / "

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 82
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mNetworks:Ljava/util/List;

    return-object v0
.end method

.method public getTotalVideos()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mTotalVideos:I

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

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public loadSpecificNetwork(I)V
    .locals 3

    const v0, 0x7f12017c

    .line 98
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/video/NetworkListingActivity;->showLoadingFragment(I)V

    .line 99
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideoCategoryParents"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/NetworkListingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity$1;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity;I)V

    new-instance v2, Lcom/tikilive/ui/video/NetworkListingActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/NetworkListingActivity$2;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tikilive/ui/backend/Api;->getVideoCategoryParents(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadSpecificNetworkVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/NetworkListingActivity$5;

    invoke-direct {v6, p0, p2, p4}, Lcom/tikilive/ui/video/NetworkListingActivity$5;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    new-instance v7, Lcom/tikilive/ui/video/NetworkListingActivity$6;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/NetworkListingActivity$6;-><init>(Lcom/tikilive/ui/video/NetworkListingActivity;)V

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tikilive/ui/backend/Api;->getVideosPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 56
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mCategoryId:I

    .line 57
    iget p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mCategoryId:I

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/video/NetworksActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/tikilive/ui/video/NetworkListingActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mTabNetworks:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mTabNetworks:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f12022a

    .line 64
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    .line 65
    iget p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mCategoryId:I

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/NetworkListingActivity;->loadSpecificNetwork(I)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    .line 72
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity;->mCategoryId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibrarySpecificNetwork(I)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/NetworkListingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onStop()V

    return-void
.end method
