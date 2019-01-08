.class public Lcom/tikilive/ui/video/TopLevelCategoriesActivity;
.super Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.source "TopLevelCategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.TopLevelCategoriesActivity"


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

.field private mDisableAnimation:Z


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

    .line 40
    iput-boolean v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mDisableAnimation:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mCategories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/TopLevelCategoriesActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadTopVideoCategories()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getTopLevelVideoCategories"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$1;-><init>(Lcom/tikilive/ui/video/TopLevelCategoriesActivity;)V

    new-instance v2, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$2;-><init>(Lcom/tikilive/ui/video/TopLevelCategoriesActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getTopLevelVideoCategories(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

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

    .line 76
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 52
    iget-object p1, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mTabCategories:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f120228

    .line 53
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->setBreadcrumbsTitle(Ljava/lang/String;)V

    const p1, 0x7f120177

    .line 54
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->showLoadingFragment(I)V

    .line 55
    invoke-direct {p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->loadTopVideoCategories()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onPause()V

    .line 72
    iget-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getTopLevelVideoCategories"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->onResume()V

    .line 61
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->setHistoryVideoLibraryTopLevelCategories()V

    .line 62
    iget-boolean v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mDisableAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, v0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->mDisableAnimation:Z

    :goto_0
    return-void
.end method
