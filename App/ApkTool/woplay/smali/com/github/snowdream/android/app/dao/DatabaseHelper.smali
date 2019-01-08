.class public Lcom/github/snowdream/android/app/dao/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "snowdream-android-downloader.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private taskDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/github/snowdream/android/app/DownloadTask;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "snowdream-android-downloader.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    iput-object v1, p0, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->taskDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->taskDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public getTaskDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/github/snowdream/android/app/DownloadTask;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->taskDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 99
    const-class v0, Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->taskDao:Lcom/j256/ormlite/dao/Dao;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->taskDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    :try_start_0
    const-string p1, "onCreate"

    .line 65
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    .line 66
    const-class p1, Lcom/github/snowdream/android/app/DownloadTask;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Can\'t create database"

    .line 68
    invoke-static {p2, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    :try_start_0
    const-string p3, "onUpgrade"

    .line 82
    invoke-static {p3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    .line 83
    const-class p3, Lcom/github/snowdream/android/app/DownloadTask;

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/github/snowdream/android/app/dao/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Can\'t drop databases"

    .line 88
    invoke-static {p2, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
