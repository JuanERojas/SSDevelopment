.class public interface abstract Lcom/github/snowdream/android/app/dao/ISql;
.super Ljava/lang/Object;
.source "ISql.java"


# virtual methods
.method public abstract addDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract deleteDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract queryDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)Lcom/github/snowdream/android/app/DownloadTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract updateDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
