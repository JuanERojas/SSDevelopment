.class public Lcom/github/snowdream/android/app/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/app/UpdateManager$UIHandler;,
        Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;
    }
.end annotation


# static fields
.field protected static final MSG_ERROR:I = 0x6

.field protected static final MSG_FINISH:I = 0x1

.field protected static final MSG_INFORM_CANCEL:I = 0xb

.field protected static final MSG_INFORM_SKIP:I = 0xc

.field protected static final MSG_INFORM_UPDATE:I = 0xa

.field protected static final MSG_SHOW_NO_UPDATE_UI:I = 0x2

.field protected static final MSG_SHOW_UPDATE_PROGRESS_UI:I = 0x4

.field protected static final MSG_SHOW_UPDATE_UI:I = 0x3

.field protected static final MSG_START:I


# instance fields
.field private context:Landroid/content/Context;

.field private downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

.field private handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

.field private listener:Lcom/github/snowdream/android/app/AbstractUpdateListener;

.field private options:Lcom/github/snowdream/android/app/UpdateOptions;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->listener:Lcom/github/snowdream/android/app/AbstractUpdateListener;

    .line 64
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->options:Lcom/github/snowdream/android/app/UpdateOptions;

    .line 65
    new-instance v1, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    invoke-direct {v1, p0, v0}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;-><init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateManager$1;)V

    iput-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    .line 66
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->listener:Lcom/github/snowdream/android/app/AbstractUpdateListener;

    .line 64
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->options:Lcom/github/snowdream/android/app/UpdateOptions;

    .line 65
    new-instance v1, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    invoke-direct {v1, p0, v0}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;-><init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateManager$1;)V

    iput-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    .line 66
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    .line 86
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateManager$UIHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->informSkip(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/UpdateOptions;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateManager;->options:Lcom/github/snowdream/android/app/UpdateOptions;

    return-object p0
.end method

.method static synthetic access$300(Lcom/github/snowdream/android/app/UpdateManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->informUpdate(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->install(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->caculateNextTime(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/AbstractUpdateListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateManager;->listener:Lcom/github/snowdream/android/app/AbstractUpdateListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/snowdream/android/app/UpdateManager;)Lcom/github/snowdream/android/app/DownloadTask;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateManager;->downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    return-object p0
.end method

.method static synthetic access$900(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->informCancel(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method

.method private caculateNextTime(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 9

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    iget-object v2, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/github/snowdream/android/app/updater/R$string;->preference_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/github/snowdream/android/app/updater/R$string;->preference_key_next_check_update_time:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    iget-object v4, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/github/snowdream/android/app/updater/R$string;->preference_key_skip_check_update_version_code:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    iget-object v5, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 294
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 297
    iget-object v5, p0, Lcom/github/snowdream/android/app/UpdateManager;->options:Lcom/github/snowdream/android/app/UpdateOptions;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/UpdateOptions;->getUpdatePeriod()Lcom/github/snowdream/android/app/UpdatePeriod;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 299
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/UpdatePeriod;->getPeriodMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    add-long v7, v0, v5

    .line 303
    invoke-interface {v2, v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private informCancel(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    return-void
.end method

.method private informSkip(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->options:Lcom/github/snowdream/android/app/UpdateOptions;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldForceUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->isForceUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateManager;->caculateNextTime(Lcom/github/snowdream/android/app/UpdateInfo;)V

    :cond_1
    return-void
.end method

.method private informUpdate(Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager;

    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/github/snowdream/android/app/DownloadManager;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v1, Lcom/github/snowdream/android/app/DownloadTask;

    iget-object v2, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/DownloadTask;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager;->downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    .line 262
    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager;->downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/UpdateInfo;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/github/snowdream/android/app/UpdateManager;->downloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    new-instance v2, Lcom/github/snowdream/android/app/UpdateManager$1;

    invoke-direct {v2, p0, p1}, Lcom/github/snowdream/android/app/UpdateManager$1;-><init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/UpdateInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/DownloadManager;->start(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)Z

    return-void
.end method

.method private static install(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 77
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public check(Landroid/content/Context;Lcom/github/snowdream/android/app/UpdateOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/snowdream/android/app/UpdateManager;->check(Landroid/content/Context;Lcom/github/snowdream/android/app/UpdateOptions;Lcom/github/snowdream/android/app/AbstractUpdateListener;)V

    return-void
.end method

.method public check(Landroid/content/Context;Lcom/github/snowdream/android/app/UpdateOptions;Lcom/github/snowdream/android/app/AbstractUpdateListener;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-nez v0, :cond_1

    const-string p1, "The Context is NUll!"

    .line 99
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->w(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    new-instance p2, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p2, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    invoke-virtual {p1, v2, p2}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 107
    new-instance p3, Lcom/github/snowdream/android/app/DefaultUpdateListener;

    invoke-direct {p3}, Lcom/github/snowdream/android/app/DefaultUpdateListener;-><init>()V

    .line 109
    :cond_2
    iput-object p3, p0, Lcom/github/snowdream/android/app/UpdateManager;->listener:Lcom/github/snowdream/android/app/AbstractUpdateListener;

    const/4 v0, 0x2

    if-nez p2, :cond_3

    const-string p1, "The UpdateOptions is NUll!"

    .line 112
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->w(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    new-instance p2, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p2, v0}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    invoke-virtual {p1, v2, p2}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 118
    :cond_3
    iput-object p2, p0, Lcom/github/snowdream/android/app/UpdateManager;->options:Lcom/github/snowdream/android/app/UpdateOptions;

    .line 121
    invoke-virtual {p3, p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->setContext(Landroid/content/Context;)V

    .line 122
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    invoke-virtual {p3, p1}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->setHandler(Landroid/os/Handler;)V

    .line 123
    invoke-virtual {p3, p2}, Lcom/github/snowdream/android/app/AbstractUpdateListener;->setUpdateOptions(Lcom/github/snowdream/android/app/UpdateOptions;)V

    .line 125
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/UpdateOptions;->shouldCheckUpdate()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 126
    new-instance p1, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;

    invoke-direct {p1, p0, p3}, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;-><init>(Lcom/github/snowdream/android/app/UpdateManager;Lcom/github/snowdream/android/app/AbstractUpdateListener;)V

    .line 127
    new-array p3, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/UpdateOptions;->getCheckUrl()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lcom/github/snowdream/android/app/UpdateManager$AsycCheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/github/snowdream/android/app/UpdateManager;->handler:Lcom/github/snowdream/android/app/UpdateManager$UIHandler;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/UpdateManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
