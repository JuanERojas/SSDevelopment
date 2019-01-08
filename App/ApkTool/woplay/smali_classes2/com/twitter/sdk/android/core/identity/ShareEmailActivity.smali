.class public Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;
.super Landroid/app/Activity;
.source "ShareEmailActivity.java"


# static fields
.field static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field static final EXTRA_SESSION_ID:Ljava/lang/String; = "session_id"


# instance fields
.field controller:Lcom/twitter/sdk/android/core/identity/ShareEmailController;

.field private session:Lcom/twitter/sdk/android/core/TwitterSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getResultReceiver(Landroid/content/Intent;)Landroid/os/ResultReceiver;
    .locals 1

    const-string v0, "result_receiver"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ResultReceiver must not be null. This activity should not be started directly."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1
.end method

.method private getSession(Landroid/content/Intent;)Lcom/twitter/sdk/android/core/TwitterSession;
    .locals 4

    const-string v0, "session_id"

    const-wide/16 v1, -0x1

    .line 80
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 82
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/core/SessionManager;->getSession(J)Lcom/twitter/sdk/android/core/Session;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No TwitterSession for id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->controller:Lcom/twitter/sdk/android/core/identity/ShareEmailController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/ShareEmailController;->cancelRequest()V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClickAllow(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->controller:Lcom/twitter/sdk/android/core/identity/ShareEmailController;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailController;->executeRequest()V

    .line 104
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->finish()V

    return-void
.end method

.method public onClickNotNow(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->controller:Lcom/twitter/sdk/android/core/identity/ShareEmailController;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailController;->cancelRequest()V

    .line 99
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/twitter/sdk/android/core/R$layout;->tw__activity_share_email:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->setContentView(I)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->getResultReceiver(Landroid/content/Intent;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->getSession(Landroid/content/Intent;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    .line 59
    new-instance p1, Lcom/twitter/sdk/android/core/identity/ShareEmailController;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    invoke-direct {p1, v1, v0}, Lcom/twitter/sdk/android/core/identity/ShareEmailController;-><init>(Lcom/twitter/sdk/android/core/identity/ShareEmailClient;Landroid/os/ResultReceiver;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->controller:Lcom/twitter/sdk/android/core/identity/ShareEmailController;

    .line 61
    sget p1, Lcom/twitter/sdk/android/core/R$id;->tw__share_email_desc:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0, p0, p1}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->setUpShareEmailDesc(Landroid/content/Context;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to create ShareEmailActivity."

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->finish()V

    :goto_0
    return-void
.end method

.method setUpShareEmailDesc(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/core/R$string;->tw__share_email_desc:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v3, v0

    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
