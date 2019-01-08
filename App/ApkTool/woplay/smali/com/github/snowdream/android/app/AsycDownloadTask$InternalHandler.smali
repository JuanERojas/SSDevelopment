.class Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsycDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/AsycDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/snowdream/android/app/AsycDownloadTask$1;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 415
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;

    if-eqz v0, :cond_1

    .line 417
    iget-object v1, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mTask:Lcom/github/snowdream/android/util/concurrent/AsyncTask;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mTask:Lcom/github/snowdream/android/util/concurrent/AsyncTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/util/concurrent/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    iget-object p1, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mTask:Lcom/github/snowdream/android/util/concurrent/AsyncTask;

    check-cast p1, Lcom/github/snowdream/android/app/AsycDownloadTask;

    iget-object v0, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mDownloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    invoke-static {p1, v0}, Lcom/github/snowdream/android/app/AsycDownloadTask;->access$200(Lcom/github/snowdream/android/app/AsycDownloadTask;Lcom/github/snowdream/android/app/DownloadTask;)V

    goto :goto_0

    .line 424
    :pswitch_1
    iget-object p1, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mTask:Lcom/github/snowdream/android/util/concurrent/AsyncTask;

    check-cast p1, Lcom/github/snowdream/android/app/AsycDownloadTask;

    iget-object v1, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mDownloadTask:Lcom/github/snowdream/android/app/DownloadTask;

    iget-object v0, v0, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;->mData:Ljava/lang/Integer;

    invoke-static {p1, v1, v0}, Lcom/github/snowdream/android/app/AsycDownloadTask;->access$100(Lcom/github/snowdream/android/app/AsycDownloadTask;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "The asyncTask is not valid or cancelled!"

    .line 418
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
