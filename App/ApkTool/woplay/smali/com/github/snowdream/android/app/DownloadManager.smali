.class public Lcom/github/snowdream/android/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    return-void
.end method

.method private OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v7, Lcom/github/snowdream/android/app/DownloadManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/snowdream/android/app/DownloadManager$1;-><init>(Lcom/github/snowdream/android/app/DownloadManager;Lcom/github/snowdream/android/app/DownloadListener;Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "The context is null or invalid!"

    .line 53
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)V
    .locals 5

    const-string v0, "Add Task"

    .line 95
    invoke-static {v0}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 97
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/DownloadTask;->setContext(Landroid/content/Context;)V

    .line 106
    :cond_1
    new-instance v1, Lcom/github/snowdream/android/app/dao/ISqlImpl;

    iget-object v2, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/dao/ISqlImpl;-><init>(Landroid/content/Context;)V

    .line 110
    :try_start_0
    invoke-interface {v1, p1}, Lcom/github/snowdream/android/app/dao/ISql;->queryDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)Lcom/github/snowdream/android/app/DownloadTask;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->isComplete()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/DownloadTask;->setDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V

    .line 122
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ADD:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    const-string p1, "The Task is already stored in the sqlite."

    .line 123
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    invoke-interface {v1, p1}, Lcom/github/snowdream/android/app/dao/ISql;->addDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V

    .line 115
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ADD:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    const-string p1, "The Task is stored in the sqlite."

    .line 116
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, p2, v0}, Lcom/github/snowdream/android/app/DownloadTask;->start(Landroid/content/Context;Lcom/github/snowdream/android/app/DownloadListener;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_1
    return-void

    .line 98
    :cond_5
    :goto_2
    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    return-void
.end method

.method public delete(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)V
    .locals 3

    const-string v0, "Delete Task"

    .line 138
    invoke-static {v0}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/DownloadTask;->setContext(Landroid/content/Context;)V

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    .line 155
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->delete()V

    .line 156
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->DELETE:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->DELETE:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    const-string p1, "The Task is already Deleted."

    .line 152
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 141
    :cond_3
    :goto_1
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    return-void
.end method

.method public deleteforever(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)V
    .locals 2

    const-string v0, "Delete Task forever"

    .line 169
    invoke-static {v0}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/DownloadTask;->setContext(Landroid/content/Context;)V

    .line 180
    :cond_1
    new-instance v0, Lcom/github/snowdream/android/app/dao/ISqlImpl;

    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/github/snowdream/android/app/dao/ISqlImpl;-><init>(Landroid/content/Context;)V

    .line 182
    :try_start_0
    invoke-interface {v0, p1}, Lcom/github/snowdream/android/app/dao/ISql;->deleteDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 187
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->DELETE:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    .line 172
    :cond_3
    :goto_1
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    return-void
.end method

.method public start(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)Z
    .locals 5

    const-string v0, "Start Task"

    .line 203
    invoke-static {v0}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 208
    sget-object v2, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, p1, p2, v0}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    return v1

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/DownloadTask;->setContext(Landroid/content/Context;)V

    .line 216
    :cond_1
    new-instance v2, Lcom/github/snowdream/android/app/dao/ISqlImpl;

    iget-object v3, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/github/snowdream/android/app/dao/ISqlImpl;-><init>(Landroid/content/Context;)V

    .line 221
    :try_start_0
    invoke-interface {v2, p1}, Lcom/github/snowdream/android/app/dao/ISql;->queryDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)Lcom/github/snowdream/android/app/DownloadTask;

    move-result-object v2

    if-nez v2, :cond_2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/github/snowdream/android/app/DownloadManager;->add(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/DownloadTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 226
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/DownloadTask;->setDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V

    .line 229
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    if-eqz p2, :cond_5

    .line 237
    iget-object v2, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v2, p2, v1}, Lcom/github/snowdream/android/app/DownloadTask;->start(Landroid/content/Context;Lcom/github/snowdream/android/app/DownloadListener;Z)V

    goto :goto_1

    .line 231
    :cond_4
    sget-object v2, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->START:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, p1, p2, v4}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    .line 232
    sget-object v2, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->FINISH:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    const-string p1, "The Task is already Running."

    .line 233
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0
.end method

.method public stop(Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;)V
    .locals 3

    const-string v0, "Stop Task"

    .line 261
    invoke-static {v0}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 264
    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    return-void

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/DownloadTask;->setContext(Landroid/content/Context;)V

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    .line 291
    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    goto :goto_1

    .line 274
    :pswitch_0
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->STOP:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    const-string p1, "The Task is already Stopped."

    .line 275
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    .line 278
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/DownloadTask;->setStatus(I)V

    .line 280
    new-instance v0, Lcom/github/snowdream/android/app/dao/ISqlImpl;

    iget-object v1, p0, Lcom/github/snowdream/android/app/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/github/snowdream/android/app/dao/ISqlImpl;-><init>(Landroid/content/Context;)V

    .line 282
    :try_start_0
    invoke-interface {v0, p1}, Lcom/github/snowdream/android/app/dao/ISql;->updateDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 287
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->stop()V

    .line 288
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->STOP:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/snowdream/android/app/DownloadManager;->OnResult(Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;Lcom/github/snowdream/android/app/DownloadTask;Lcom/github/snowdream/android/app/DownloadListener;Ljava/lang/Integer;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
