.class public Lcom/tikilive/ui/upgrade/PackageDetailsActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "PackageDetailsActivity.java"


# static fields
.field public static final EXTRA_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final EXTRA_SELECTED_CHANNEL_ID:Ljava/lang/String; = "selected_channel_id"

.field public static final EXTRA_SELECTED_CHANNEL_NAME:Ljava/lang/String; = "selected_channel_name"

.field public static final EXTRA_SELECTED_VIDEO_ID:Ljava/lang/String; = "selected_video_id"

.field public static final FRAGMENT_PACKAGE_DETAILS:Ljava/lang/String; = "package_details_fragment"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.upgrade.PackageDetailsActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mBreadcrumbs:Landroid/widget/TextView;

.field private mCatchUpChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

.field private mLiveChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageDescription:Ljava/lang/String;

.field private mPackageHasSubscription:Z

.field private mPackageId:I

.field private mPackageImage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackagePrice:D

.field private mRadioChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
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
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mLiveChannels:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mCatchUpChannels:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mRadioChannels:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelId:I

    const-string v1, ""

    .line 56
    iput-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelName:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedVideoId:I

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mLiveChannels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mCatchUpChannels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mRadioChannels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;D)D
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackagePrice:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageHasSubscription:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    if-nez v0, :cond_0

    .line 262
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setTitle(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    :goto_0
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mErrorFragment:Lcom/tikilive/ui/fragment/ErrorFragment;

    return-object p1
.end method

.method private loadPackageDetails()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    iget v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageId:I

    new-instance v2, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$1;-><init>(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)V

    new-instance v3, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$2;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity$2;-><init>(Lcom/tikilive/ui/upgrade/PackageDetailsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/backend/Api;->getPackage(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private showErrorFragment(Lcom/tikilive/ui/fragment/ErrorFragment;)V
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 273
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 274
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 275
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method


# virtual methods
.method public getCatchUpChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mCatchUpChannels:Ljava/util/List;

    return-object v0
.end method

.method public getLiveChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mLiveChannels:Ljava/util/List;

    return-object v0
.end method

.method public getRadioChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mRadioChannels:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedChannelId()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelId:I

    return v0
.end method

.method public getSelectedChannelName()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedVideoId()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedVideoId:I

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "package_details_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    iget v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelId:I

    if-lez v1, :cond_0

    const-string v1, "selected_channel_id"

    .line 93
    iget v2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "selected_channel_name"

    .line 94
    iget-object v2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_0
    iget v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedVideoId:I

    if-lez v1, :cond_1

    const-string v1, "selected_video_id"

    .line 97
    iget v2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedVideoId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 103
    :cond_2
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0024

    .line 64
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const v0, 0x7f0a004f

    .line 68
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mBreadcrumbs:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const p1, 0x7f120265

    .line 71
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageId:I

    .line 78
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_channel_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelId:I

    .line 79
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_channel_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedChannelName:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selected_video_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mSelectedVideoId:I

    .line 82
    invoke-direct {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->loadPackageDetails()V

    return-void
.end method

.method public openPackageDetails()V
    .locals 5

    .line 122
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->setImmersiveMode()V

    .line 124
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->setBreadcrumbs(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageId:I

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackageDescription:Ljava/lang/String;

    iget-wide v3, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mPackagePrice:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;D)Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "package_details_fragment"

    const v3, 0x7f0a008e

    .line 128
    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 129
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setBreadcrumbs(Ljava/lang/String;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsActivity;->mBreadcrumbs:Landroid/widget/TextView;

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
