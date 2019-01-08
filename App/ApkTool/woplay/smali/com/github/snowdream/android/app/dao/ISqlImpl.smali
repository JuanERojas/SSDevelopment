.class public Lcom/github/snowdream/android/app/dao/ISqlImpl;
.super Ljava/lang/Object;
.source "ISqlImpl.java"

# interfaces
.implements Lcom/github/snowdream/android/app/dao/ISql;


# instance fields
.field private databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    .line 35
    iput-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHelper()Lcom/github/snowdream/android/app/dao/DatabaseHelper;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    iput-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public Release()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/github/snowdream/android/app/dao/ISqlImpl;->databaseHelper:Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    :cond_0
    return-void
.end method

.method public addDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/github/snowdream/android/app/dao/ISqlImpl;->getHelper()Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->getTaskDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 70
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    return-void
.end method

.method public deleteDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/github/snowdream/android/app/dao/ISqlImpl;->getHelper()Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->getTaskDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 110
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public queryDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)Lcom/github/snowdream/android/app/DownloadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/github/snowdream/android/app/dao/ISqlImpl;->getHelper()Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->getTaskDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "url"

    .line 94
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/github/snowdream/android/app/DownloadTask;

    :cond_1
    return-object v0
.end method

.method public updateDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/github/snowdream/android/app/dao/ISqlImpl;->getHelper()Lcom/github/snowdream/android/app/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->getTaskDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 80
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method
