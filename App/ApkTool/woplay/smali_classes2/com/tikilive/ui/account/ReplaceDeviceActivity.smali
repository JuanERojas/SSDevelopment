.class public Lcom/tikilive/ui/account/ReplaceDeviceActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "ReplaceDeviceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.account.ReplaceDeviceActivity"


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

.field private mTotalDevices:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mTotalDevices:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mDevices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->loadDevices()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tikilive/ui/account/ReplaceDeviceActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mTotalDevices:I

    return p1
.end method

.method static synthetic access$400(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->loadAccountDevicesFragment()V

    return-void
.end method

.method private loadAccountDevicesFragment()V
    .locals 3

    .line 278
    invoke-static {}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->newInstance()Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 280
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private loadDevices()V
    .locals 3

    const-string v0, "Loading devices ..."

    .line 216
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->showLoadingFragment(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getSubscriptionDetails"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getInUseDevicesCount"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$5;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    new-instance v2, Lcom/tikilive/ui/account/ReplaceDeviceActivity$6;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$6;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getInUseDevices(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

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

    .line 160
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method public getTotalDevices()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mTotalDevices:I

    return v0
.end method

.method public logout()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {v0}, Lcom/tikilive/ui/application/MyApplication;->resetSettings()V

    .line 171
    new-instance v0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$4;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/tikilive/ui/helper/Utils;->logout(Landroid/content/Context;ZLcom/tikilive/ui/helper/Utils$OnLogoutNotified;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->logout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 51
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 53
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->setContentView(I)V

    const p1, 0x7f0a02f9

    .line 55
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0a030c

    .line 58
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f0a01db

    .line 59
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    const p1, 0x7f0a00d5

    .line 60
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    const p1, 0x7f0a01a5

    .line 61
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/Button;

    .line 63
    new-instance p1, Lcom/tikilive/ui/account/ReplaceDeviceActivity$1;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$1;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 71
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v6, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    new-instance v0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$3;-><init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    invoke-virtual {p1, v6, v0}, Lcom/tikilive/ui/backend/Api;->getAccountDetails(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const p1, 0x7f120028

    .line 127
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 130
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

    .line 135
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getSubscriptionDetails"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getDevices"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 143
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    return-void
.end method

.method protected showLoadingFragment(I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->showLoadingFragment(Ljava/lang/String;)V

    return-void
.end method

.method protected showLoadingFragment(Ljava/lang/String;)V
    .locals 3

    .line 194
    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 196
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setLogoHidden(Z)V

    .line 197
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setTaglineHidden(Z)V

    .line 198
    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setAlternateMessage(Z)V

    .line 200
    invoke-virtual {v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a008e

    .line 204
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 206
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method
