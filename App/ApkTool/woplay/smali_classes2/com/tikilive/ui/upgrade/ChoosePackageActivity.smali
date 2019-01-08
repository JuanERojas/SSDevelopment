.class public Lcom/tikilive/ui/upgrade/ChoosePackageActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "ChoosePackageActivity.java"


# static fields
.field public static final EXTRA_SELECTED_CHANNEL_ID:Ljava/lang/String; = "selected_channel_id"

.field public static final EXTRA_SELECTED_CHANNEL_NAME:Ljava/lang/String; = "selected_channel_name"

.field public static final EXTRA_SELECTED_VIDEO_ID:Ljava/lang/String; = "selected_video_id"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.upgrade.ChoosePackageActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

.field private mLoadedPackageDetails:I

.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedChannelId:I

.field private mSelectedChannelName:Ljava/lang/String;

.field private mSelectedVideoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mPackages:Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mLoadedPackageDetails:I

    .line 42
    iput v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    .line 43
    iput v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedVideoId:I

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mPackages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/model/Package;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->loadPackageDetails(Lcom/tikilive/ui/model/Package;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mLoadedPackageDetails:I

    return p0
.end method

.method static synthetic access$508(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mLoadedPackageDetails:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mLoadedPackageDetails:I

    return v0
.end method

.method private getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    if-nez v0, :cond_0

    .line 320
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setTitle(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    return-object p1
.end method

.method private loadPackageDetails(Lcom/tikilive/ui/model/Package;)V
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 182
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Package;->getId()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$3;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/model/Package;I)V

    new-instance p1, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$4;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$4;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)V

    .line 181
    invoke-virtual {v1, v2, v3, p1}, Lcom/tikilive/ui/backend/Api;->getPackage(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loadPackages()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPackages"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)V

    .line 156
    new-instance v1, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$2;-><init>(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)V

    .line 170
    iget v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    if-lez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    iget v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/tikilive/ui/backend/Api;->getPackagesFilteredByChannelId(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v2, v0, v1}, Lcom/tikilive/ui/backend/Api;->getPackages(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_0
    return-void
.end method

.method private showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 331
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 332
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 333
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method


# virtual methods
.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mPackages:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedChannelId()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    return v0
.end method

.method public getSelectedVideoId()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedVideoId:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d001e

    .line 51
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12017f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_channel_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    .line 63
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_channel_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelName:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_video_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedVideoId:I

    const p1, 0x7f0a0051

    .line 66
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a0050

    .line 67
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    iget v2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    if-lez v2, :cond_1

    const v2, 0x7f120097

    .line 70
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f120038

    const/4 v2, 0x1

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f120033

    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :goto_0
    invoke-direct {p0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->loadPackages()V

    return-void
.end method

.method public onPackageSelected(Lcom/tikilive/ui/model/Package;)V
    .locals 2

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_id"

    .line 338
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Package;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    if-lez p1, :cond_0

    const-string p1, "selected_channel_id"

    .line 340
    iget v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "selected_channel_name"

    .line 341
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedChannelName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :cond_0
    iget p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedVideoId:I

    if-lez p1, :cond_1

    const-string p1, "selected_video_id"

    .line 344
    iget v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mSelectedVideoId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onStop()V

    .line 82
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getPackages"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method
