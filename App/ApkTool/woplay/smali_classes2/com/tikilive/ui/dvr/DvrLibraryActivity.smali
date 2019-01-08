.class public Lcom/tikilive/ui/dvr/DvrLibraryActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "DvrLibraryActivity.java"

# interfaces
.implements Lcom/tikilive/ui/dvr/OnErrorAwareListener;


# static fields
.field public static final ARG_SELECTED_ITEM_ID:Ljava/lang/String; = "selected_dvr_item_id"

.field public static final ARG_SELECTED_TAB:Ljava/lang/String; = "selected_tab"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.dvr.DvrLibraryActivity"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private final mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

.field private mHasFailedRequests:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    .line 38
    invoke-static {}, Lcom/tikilive/ui/model/DvrProvider;->getInstance()Lcom/tikilive/ui/model/DvrProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mHasFailedRequests:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)Lcom/tikilive/ui/model/DvrProvider;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tikilive/ui/dvr/DvrLibraryActivity;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mHasFailedRequests:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->renderContent()V

    return-void
.end method

.method private loadDvrFiles()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/DvrProvider;->clear()V

    .line 68
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity$1;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V

    new-instance v2, Lcom/tikilive/ui/dvr/DvrLibraryActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity$2;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getDvrFiles(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private renderContent()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/DvrProvider;->getRequests()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const v1, 0x7f0a008e

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonText(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lcom/tikilive/ui/dvr/DvrLibraryActivity$3;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity$3;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivity;)V

    invoke-virtual {v0, v2}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 130
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selected_dvr_item_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->newInstance(I)Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selected_tab"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/DvrStatus;

    if-nez v0, :cond_2

    .line 141
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    .line 143
    :cond_2
    iget-boolean v2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mHasFailedRequests:Z

    invoke-static {v2, v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->newInstance(ZLcom/tikilive/ui/model/DvrStatus;)Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method


# virtual methods
.method public hasFailedRequests()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mHasFailedRequests:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const p1, 0x7f0d0022

    .line 48
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12017a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 56
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->loadDvrFiles()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    const-string v1, "Api:getDvrFiles"

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Api;->cancelAll(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 152
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 155
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 157
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 158
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method
