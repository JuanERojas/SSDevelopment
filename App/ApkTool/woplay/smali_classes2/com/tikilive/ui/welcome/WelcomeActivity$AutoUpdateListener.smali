.class Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;
.super Lcom/github/snowdream/android/app/AbstractUpdateListener;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/welcome/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUpdateListener"
.end annotation


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

.field private toast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p0}, Lcom/github/snowdream/android/app/AbstractUpdateListener;-><init>()V

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->toast:Landroid/widget/Toast;

    .line 214
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tikilive/ui/welcome/WelcomeActivity;Lcom/tikilive/ui/welcome/WelcomeActivity$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    return-void
.end method


# virtual methods
.method public ExitApp()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onShowNoUpdateUI()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120030

    const/4 v2, 0x0

    .line 267
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onShowUpdateProgressUI(Lcom/github/snowdream/android/app/UpdateInfo;Lcom/github/snowdream/android/app/DownloadTask;I)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 276
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    .line 277
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    const v0, 0x7f1200e0

    invoke-virtual {p2, v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 279
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 280
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 281
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    const/16 p1, 0x64

    if-lt p3, p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShowUpdateUI(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->toast:Landroid/widget/Toast;

    .line 242
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120032

    .line 243
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->getUpdateTips(Lcom/github/snowdream/android/app/UpdateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12002f

    .line 245
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;

    invoke-direct {v3, p0, p1}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$2;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;Lcom/github/snowdream/android/app/UpdateInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120031

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f12002e

    const/4 v2, 0x0

    .line 221
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->toast:Landroid/widget/Toast;

    .line 222
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$AutoUpdateListener;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
