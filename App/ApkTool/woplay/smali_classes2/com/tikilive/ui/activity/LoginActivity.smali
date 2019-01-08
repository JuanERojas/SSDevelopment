.class public Lcom/tikilive/ui/activity/LoginActivity;
.super Lcom/tikilive/ui/activity/BaseActivity;
.source "LoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.activity.LoginActivity"


# instance fields
.field final mApi:Lcom/tikilive/ui/backend/Api;

.field private mFacebookCallbackManager:Lcom/facebook/CallbackManager;

.field private mFacebookRealLoginButton:Lcom/facebook/login/widget/LoginButton;

.field private mLoginButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/tikilive/ui/activity/BaseActivity;-><init>()V

    .line 55
    invoke-static {p0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/activity/LoginActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/tikilive/ui/activity/LoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/activity/LoginActivity;)Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/activity/LoginActivity;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->loginWithFacebook(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tikilive/ui/activity/LoginActivity;)Lcom/facebook/login/widget/LoginButton;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookRealLoginButton:Lcom/facebook/login/widget/LoginButton;

    return-object p0
.end method

.method private loginWithFacebook(Lcom/facebook/AccessToken;)V
    .locals 3

    .line 322
    new-instance v0, Lcom/tikilive/ui/activity/LoginActivity$6;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/activity/LoginActivity$6;-><init>(Lcom/tikilive/ui/activity/LoginActivity;)V

    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name,email"

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 440
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method private showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f0a01a3

    .line 454
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    invoke-static {p1, p2}, Lcom/tikilive/ui/fragment/ErrorFragment;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 456
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 457
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 458
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 459
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 460
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 461
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method


# virtual methods
.method public launchForgotPassword(Landroid/view/View;)V
    .locals 1

    .line 444
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/activity/ForgotPasswordActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchRegister(Landroid/view/View;)V
    .locals 1

    .line 449
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public login(Landroid/view/View;)V
    .locals 4

    .line 230
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mUsername:Landroid/widget/EditText;

    const v0, 0x7f120269

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mUsername:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mPassword:Landroid/widget/EditText;

    const v0, 0x7f120268

    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v2, Lcom/tikilive/ui/activity/LoginActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/activity/LoginActivity$4;-><init>(Lcom/tikilive/ui/activity/LoginActivity;Ljava/lang/String;)V

    new-instance v3, Lcom/tikilive/ui/activity/LoginActivity$5;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/activity/LoginActivity$5;-><init>(Lcom/tikilive/ui/activity/LoginActivity;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/tikilive/ui/backend/Api;->authenticate(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/tikilive/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/tikilive/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    .line 68
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/LoginActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0a0356

    .line 79
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mUsername:Landroid/widget/EditText;

    const p1, 0x7f0a020a

    .line 80
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mPassword:Landroid/widget/EditText;

    const p1, 0x7f0a0016

    .line 81
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 82
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 84
    new-instance p1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    const p1, 0x7f0a0351

    .line 85
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 86
    new-instance v0, Lcom/tikilive/ui/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/activity/LoginActivity$1;-><init>(Lcom/tikilive/ui/activity/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    const p1, 0x7f0a0244

    .line 167
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/widget/LoginButton;

    iput-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookRealLoginButton:Lcom/facebook/login/widget/LoginButton;

    .line 168
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookRealLoginButton:Lcom/facebook/login/widget/LoginButton;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "public_profile, email"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 169
    iget-object p1, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookRealLoginButton:Lcom/facebook/login/widget/LoginButton;

    iget-object v0, p0, Lcom/tikilive/ui/activity/LoginActivity;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/tikilive/ui/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/activity/LoginActivity$2;-><init>(Lcom/tikilive/ui/activity/LoginActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/widget/LoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    const p1, 0x7f0a0105

    .line 191
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 192
    new-instance v0, Lcom/tikilive/ui/activity/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/activity/LoginActivity$3;-><init>(Lcom/tikilive/ui/activity/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f120028

    .line 204
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tikilive/ui/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :catch_0
    const v0, 0x7f0a0038

    .line 212
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 218
    invoke-super {p0}, Lcom/tikilive/ui/activity/BaseActivity;->onResume()V

    .line 219
    invoke-static {p0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    return-void
.end method
