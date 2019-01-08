.class public Lcom/tikilive/ui/activity/RegisterActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "RegisterActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.activity.RegisterActivity"


# instance fields
.field private mAffiliateId:Landroid/widget/EditText;

.field private mDealerReferralId:Landroid/widget/EditText;

.field private mEmail:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/tikilive/ui/activity/RegisterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mUsername:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mEmail:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mAffiliateId:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mDealerReferralId:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/activity/RegisterActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f0a0258

    .line 180
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/RegisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 183
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 186
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 187
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method


# virtual methods
.method public launchLogin(Landroid/view/View;)V
    .locals 1

    .line 175
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/activity/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0025

    .line 40
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->setContentView(I)V

    const p1, 0x7f0a0356

    .line 42
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mUsername:Landroid/widget/EditText;

    const p1, 0x7f0a00d5

    .line 43
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mEmail:Landroid/widget/EditText;

    const p1, 0x7f0a020a

    .line 44
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    const p1, 0x7f0a002b

    .line 45
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mAffiliateId:Landroid/widget/EditText;

    const p1, 0x7f0a00a7

    .line 46
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mDealerReferralId:Landroid/widget/EditText;

    const p1, 0x7f0a02b2

    .line 56
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 57
    new-instance v0, Lcom/tikilive/ui/activity/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/activity/RegisterActivity$1;-><init>(Lcom/tikilive/ui/activity/RegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/RegisterActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 78
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    return-void
.end method

.method public register(Landroid/view/View;)V
    .locals 8

    .line 83
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mUsername:Landroid/widget/EditText;

    const v0, 0x7f120269

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mUsername:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    const v0, 0x7f120266

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    const v0, 0x7f120268

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mAffiliateId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity;->mDealerReferralId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    .line 112
    new-instance v6, Lcom/tikilive/ui/activity/RegisterActivity$2;

    invoke-direct {v6, p0}, Lcom/tikilive/ui/activity/RegisterActivity$2;-><init>(Lcom/tikilive/ui/activity/RegisterActivity;)V

    new-instance v7, Lcom/tikilive/ui/activity/RegisterActivity$3;

    invoke-direct {v7, p0}, Lcom/tikilive/ui/activity/RegisterActivity$3;-><init>(Lcom/tikilive/ui/activity/RegisterActivity;)V

    invoke-virtual/range {v0 .. v7}, Lcom/tikilive/ui/backend/Api;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
