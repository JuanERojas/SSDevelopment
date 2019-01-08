.class public Lcom/tikilive/ui/account/AccountActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "AccountActivity.java"


# static fields
.field public static final INITIAL_FRAGMENT:Ljava/lang/String; = "INITIAL_FRAGMENT"

.field public static final INITIAL_FRAGMENT_DEVICES:I = 0x102

.field public static final INITIAL_FRAGMENT_SUBSCRIPTIONS:I = 0x101

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.account.AccountActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private final mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicesLoaded:Z

.field private final mSubscriptionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsLoaded:Z

.field private mTotalDevices:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mSubscriptionsLoaded:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tikilive/ui/account/AccountActivity;->mSubscriptionItems:Ljava/util/List;

    .line 56
    iput-boolean v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevicesLoaded:Z

    .line 57
    iput v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mTotalDevices:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tikilive/ui/account/AccountActivity;->loadSubscriptionDetails()V

    return-void
.end method

.method static synthetic access$100(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tikilive/ui/account/AccountActivity;->loadDevices()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/tikilive/ui/account/AccountActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/account/AccountActivity;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tikilive/ui/account/AccountActivity;->mSubscriptionItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tikilive/ui/account/AccountActivity;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mSubscriptionsLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tikilive/ui/account/AccountActivity;->loadAccountSubscriptionsFragment()V

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/account/AccountActivity;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/tikilive/ui/account/AccountActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mTotalDevices:I

    return p1
.end method

.method static synthetic access$802(Lcom/tikilive/ui/account/AccountActivity;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevicesLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tikilive/ui/account/AccountActivity;->loadAccountDevicesFragment()V

    return-void
.end method

.method private loadAccountDevicesFragment()V
    .locals 3

    .line 493
    invoke-static {}, Lcom/tikilive/ui/account/AccountDevicesFragment;->newInstance()Lcom/tikilive/ui/account/AccountDevicesFragment;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 495
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 496
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private loadAccountSubscriptionsFragment()V
    .locals 3

    .line 405
    invoke-static {}, Lcom/tikilive/ui/account/AccountSubscriptionsFragment;->newInstance()Lcom/tikilive/ui/account/AccountSubscriptionsFragment;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 407
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 408
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private loadDevices()V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0, v0}, Lcom/tikilive/ui/account/AccountActivity;->loadDevices(Z)V

    return-void
.end method

.method private loadDevices(Z)V
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevicesLoaded:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/tikilive/ui/account/AccountActivity;->loadAccountDevicesFragment()V

    return-void

    :cond_0
    const-string p1, "Loading devices ..."

    .line 418
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->showLoadingFragment(Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v0, "Api:getSubscriptionDetails"

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v0, "Api:getDevices"

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v0, Lcom/tikilive/ui/account/AccountActivity$8;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/AccountActivity$8;-><init>(Lcom/tikilive/ui/account/AccountActivity;)V

    new-instance v1, Lcom/tikilive/ui/account/AccountActivity$9;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/AccountActivity$9;-><init>(Lcom/tikilive/ui/account/AccountActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/tikilive/ui/backend/Api;->getDevices(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loadSubscriptionDetails()V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, v0}, Lcom/tikilive/ui/account/AccountActivity;->loadSubscriptionDetails(Z)V

    return-void
.end method

.method private loadSubscriptionDetails(Z)V
    .locals 2

    .line 299
    iget-boolean v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mSubscriptionsLoaded:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/tikilive/ui/account/AccountActivity;->loadAccountSubscriptionsFragment()V

    return-void

    :cond_0
    const p1, 0x7f120187

    .line 304
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->showLoadingFragment(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v0, "Api:getSubscriptionDetails"

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v0, "Api:getDevices"

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v0, Lcom/tikilive/ui/account/AccountActivity$6;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/AccountActivity$6;-><init>(Lcom/tikilive/ui/account/AccountActivity;)V

    new-instance v1, Lcom/tikilive/ui/account/AccountActivity$7;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/AccountActivity$7;-><init>(Lcom/tikilive/ui/account/AccountActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/tikilive/ui/backend/Api;->getSubscriptionDetails(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Device;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method public getInUseDevicesCount()I
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tikilive/ui/model/Device;

    .line 269
    invoke-virtual {v2}, Lcom/tikilive/ui/model/Device;->getUsedStatus()Lcom/tikilive/ui/model/Device$UsedStatus;

    move-result-object v2

    sget-object v3, Lcom/tikilive/ui/model/Device$UsedStatus;->IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSubscriptionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Package;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mSubscriptionItems:Ljava/util/List;

    return-object v0
.end method

.method public getTotalDevices()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mTotalDevices:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 62
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 64
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->setContentView(I)V

    const p1, 0x7f0a02f9

    .line 66
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0a02f7

    .line 69
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0a02e5

    .line 70
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    new-instance v2, Lcom/tikilive/ui/account/AccountActivity$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/tikilive/ui/account/AccountActivity$1;-><init>(Lcom/tikilive/ui/account/AccountActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v2, Lcom/tikilive/ui/account/AccountActivity$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/tikilive/ui/account/AccountActivity$2;-><init>(Lcom/tikilive/ui/account/AccountActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INITIAL_FRAGMENT"

    const/16 v4, 0x101

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x102

    if-eq v2, v4, :cond_0

    .line 97
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    const p1, 0x7f0a030c

    .line 102
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f0a01db

    .line 103
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    const p1, 0x7f0a00d5

    .line 104
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    const p1, 0x7f0a01a5

    .line 105
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/Button;

    .line 107
    new-instance p1, Lcom/tikilive/ui/account/AccountActivity$3;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/account/AccountActivity$3;-><init>(Lcom/tikilive/ui/account/AccountActivity;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 153
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v7, Lcom/tikilive/ui/account/AccountActivity$4;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tikilive/ui/account/AccountActivity$4;-><init>(Lcom/tikilive/ui/account/AccountActivity;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    new-instance v1, Lcom/tikilive/ui/account/AccountActivity$5;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/AccountActivity$5;-><init>(Lcom/tikilive/ui/account/AccountActivity;)V

    invoke-virtual {p1, v7, v1}, Lcom/tikilive/ui/backend/Api;->getAccountDetails(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const p1, 0x7f120028

    .line 227
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    :catch_0
    const v1, 0x7f0a0038

    .line 235
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/account/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 236
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 248
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getSubscriptionDetails"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getDevices"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 243
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    return-void
.end method

.method protected showLoadingFragment(I)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity;->showLoadingFragment(Ljava/lang/String;)V

    return-void
.end method

.method protected showLoadingFragment(Ljava/lang/String;)V
    .locals 3

    .line 277
    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 279
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setLogoHidden(Z)V

    .line 280
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setTaglineHidden(Z)V

    .line 281
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setAlternateMessage(Z)V

    .line 283
    invoke-virtual {v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/tikilive/ui/account/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 287
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 289
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method
