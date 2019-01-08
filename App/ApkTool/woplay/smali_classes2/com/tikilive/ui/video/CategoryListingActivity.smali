.class public Lcom/tikilive/ui/video/CategoryListingActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "CategoryListingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/CategoryListingActivity$CategoryListingFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.CategoryListingActivity"


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

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field mCategoryId:I

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

    .line 46
    iput v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mTotalVideos:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategories:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mVideos:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mBreadcrumbs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/CategoryListingActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/video/CategoryListingActivity;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->loadSpecificCategoryItems(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/tikilive/ui/video/CategoryListingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/CategoryListingActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/CategoryListingActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tikilive/ui/video/CategoryListingActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mTotalVideos:I

    return p1
.end method

.method private loadSpecificCategoryItems(I)V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getItemsPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/CategoryListingActivity$3;

    invoke-direct {v6, p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity$3;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity;I)V

    new-instance v7, Lcom/tikilive/ui/video/CategoryListingActivity$4;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/CategoryListingActivity$4;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity;)V

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

    .line 99
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mBreadcrumbs:Ljava/util/List;

    return-object v0
.end method

.method public getBreadcrumbsTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mBreadcrumbs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/VideoCategory;

    const-string v2, " / "

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

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

    .line 91
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getTotalVideos()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mTotalVideos:I

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

    .line 95
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public loadSpecificCategory(I)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideoCategoryParents"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/CategoryListingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity$1;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity;I)V

    new-instance v2, Lcom/tikilive/ui/video/CategoryListingActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/CategoryListingActivity$2;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tikilive/ui/backend/Api;->getVideoCategoryParents(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public loadSpecificCategoryVideos(IIILcom/tikilive/ui/video/OnLoadedVideosListener;)V
    .locals 8

    .line 236
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/video/CategoryListingActivity$5;

    invoke-direct {v6, p0, p2, p4}, Lcom/tikilive/ui/video/CategoryListingActivity$5;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity;ILcom/tikilive/ui/video/OnLoadedVideosListener;)V

    new-instance v7, Lcom/tikilive/ui/video/CategoryListingActivity$6;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/video/CategoryListingActivity$6;-><init>(Lcom/tikilive/ui/video/CategoryListingActivity;)V

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tikilive/ui/backend/Api;->getVideosPerCategory(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/tikilive/ui/video/CategoryListingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 57
    invoke-virtual {p0}, Lcom/tikilive/ui/video/CategoryListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategoryId:I

    .line 58
    iget p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategoryId:I

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/tikilive/ui/video/CategoryListingActivity;->finish()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mTabCategories:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f120228

    .line 64
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    const p1, 0x7f120178

    .line 65
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->showLoadingFragment(I)V

    .line 66
    iget p1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategoryId:I

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/CategoryListingActivity;->loadSpecificCategory(I)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideoCategoryParents"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getItemsPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getVideosPerCategory"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    .line 73
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/video/CategoryListingActivity;->mCategoryId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibrarySpecificCategory(I)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/CategoryListingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onStop()V

    return-void
.end method
