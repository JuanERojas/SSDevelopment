.class public Lcom/github/snowdream/android/app/DefaultUpdateListener;
.super Lcom/github/snowdream/android/app/AbstractUpdateListener;
.source "DefaultUpdateListener.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/github/snowdream/android/app/AbstractUpdateListener;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationManager:Landroid/app/NotificationManager;

    .line 27
    iput-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    iput-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public ExitApp()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onShowNoUpdateUI()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/github/snowdream/android/app/updater/R$string;->autoupdate_no_update:I

    .line 89
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public onShowUpdateProgressUI(Lcom/github/snowdream/android/app/UpdateInfo;Lcom/github/snowdream/android/app/DownloadTask;I)V
    .locals 5

    .line 98
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 102
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 108
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 109
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "%"

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 113
    iget-object v4, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_0

    const-string v4, "notification"

    .line 114
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationManager:Landroid/app/NotificationManager;

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v4, :cond_1

    .line 118
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 124
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 127
    iget-object p1, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 p2, 0x64

    invoke-virtual {p1, p2, p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 128
    iget-object p1, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p2, "can not get the package info"

    .line 131
    invoke-static {p2, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShowUpdateUI(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/github/snowdream/android/app/updater/R$string;->autoupdate_update_tips:I

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->getUpdateTips(Lcom/github/snowdream/android/app/UpdateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/github/snowdream/android/app/updater/R$string;->autoupdate_confirm:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/github/snowdream/android/app/DefaultUpdateListener$3;

    invoke-direct {v3, p0, p1}, Lcom/github/snowdream/android/app/DefaultUpdateListener$3;-><init>(Lcom/github/snowdream/android/app/DefaultUpdateListener;Lcom/github/snowdream/android/app/UpdateInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/github/snowdream/android/app/updater/R$string;->autoupdate_cancel:I

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/github/snowdream/android/app/DefaultUpdateListener$2;

    invoke-direct {v3, p0, p1}, Lcom/github/snowdream/android/app/DefaultUpdateListener$2;-><init>(Lcom/github/snowdream/android/app/DefaultUpdateListener;Lcom/github/snowdream/android/app/UpdateInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/github/snowdream/android/app/updater/R$string;->autoupdate_skip:I

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/github/snowdream/android/app/DefaultUpdateListener$1;

    invoke-direct {v2, p0, p1}, Lcom/github/snowdream/android/app/DefaultUpdateListener$1;-><init>(Lcom/github/snowdream/android/app/DefaultUpdateListener;Lcom/github/snowdream/android/app/UpdateInfo;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/github/snowdream/android/app/updater/R$string;->autoupdate_checking:I

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->alertDialog:Landroid/app/AlertDialog;

    .line 38
    iget-object v0, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
