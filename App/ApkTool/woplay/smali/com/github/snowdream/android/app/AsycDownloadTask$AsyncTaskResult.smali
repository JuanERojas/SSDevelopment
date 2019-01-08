.class Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsycDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/AsycDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation


# instance fields
.field final mData:Ljava/lang/Integer;

.field final mDownloadTask:Lcom/github/snowdream/android/app/DownloadTask;

.field final mTask:Lcom/github/snowdream/android/util/concurrent/AsyncTask;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/util/concurrent/AsyncTask;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mTask:Lcom/github/snowdream/android/util/concurrent/AsyncTask;

    .line 407
    iput-object p3, p0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mData:Ljava/lang/Integer;

    .line 408
    iput-object p2, p0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mDownloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    return-void
.end method
