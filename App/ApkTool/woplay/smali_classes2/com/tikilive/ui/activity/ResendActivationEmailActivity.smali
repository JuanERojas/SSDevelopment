.class public Lcom/tikilive/ui/activity/ResendActivationEmailActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "ResendActivationEmailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.activity.ResendActivationEmailActivity"


# instance fields
.field private mEmail:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/activity/ResendActivationEmailActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/activity/ResendActivationEmailActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f0a025a

    .line 101
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 108
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 32
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->setContentView(I)V

    const p1, 0x7f0a00d5

    .line 33
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 39
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    return-void
.end method

.method public sendEmail(Landroid/view/View;)V
    .locals 3

    .line 44
    iget-object p1, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    const v0, 0x7f120266

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 52
    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object p1, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    const v0, 0x7f120267

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->mEmail:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/activity/ResendActivationEmailActivity$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity$1;-><init>(Lcom/tikilive/ui/activity/ResendActivationEmailActivity;)V

    new-instance v2, Lcom/tikilive/ui/activity/ResendActivationEmailActivity$2;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/activity/ResendActivationEmailActivity$2;-><init>(Lcom/tikilive/ui/activity/ResendActivationEmailActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tikilive/ui/backend/Api;->resendActivationEmail(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
