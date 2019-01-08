.class public abstract Lcom/tikilive/ui/video/VideoLibraryTabsActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "VideoLibraryTabsActivity.java"


# instance fields
.field private mBreadcrumbsTitle:Landroid/widget/TextView;

.field private mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

.field protected mTabCategories:Landroid/widget/TextView;

.field protected mTabLatestEpisodes:Landroid/widget/TextView;

.field protected mTabNetworks:Landroid/widget/TextView;

.field protected mTabPopular:Landroid/widget/TextView;

.field protected mTabSearch:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    .line 34
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->setContentView(I)V

    const p1, 0x7f0a004f

    .line 36
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mBreadcrumbsTitle:Landroid/widget/TextView;

    const p1, 0x7f0a02e4

    .line 38
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabCategories:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabCategories:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$1;-><init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02e9

    .line 49
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabNetworks:Landroid/widget/TextView;

    .line 50
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabNetworks:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$2;-><init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "VideoLibraryNetworksPreferences"

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "networks_previous_status"

    .line 61
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabNetworks:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const p1, 0x7f0a02eb

    .line 66
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabPopular:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabPopular:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$3;-><init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02e8

    .line 78
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabLatestEpisodes:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabLatestEpisodes:Landroid/widget/TextView;

    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$4;-><init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02f4

    .line 89
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    .line 90
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$5;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$5;-><init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/application/MyApplication;

    .line 102
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$6;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity$6;-><init>(Lcom/tikilive/ui/video/VideoLibraryTabsActivity;)V

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/application/MyApplication;->processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mTabSearch:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setBreadcrumbsTitle(Ljava/lang/String;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mBreadcrumbsTitle:Landroid/widget/TextView;

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

.method protected showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 146
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 149
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 152
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 153
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method

.method protected showLoadingFragment(I)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->showLoadingFragment(Ljava/lang/String;)V

    return-void
.end method

.method protected showLoadingFragment(Ljava/lang/String;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    if-nez v0, :cond_0

    .line 123
    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->setMessage(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->setLogoHidden(Z)V

    .line 128
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->setTaglineHidden(Z)V

    .line 129
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/fragment/LoadingFragment;->setAlternateMessage(Z)V

    .line 131
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoLibraryTabsActivity;->mLoadingFragment:Lcom/tikilive/ui/fragment/LoadingFragment;

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method
