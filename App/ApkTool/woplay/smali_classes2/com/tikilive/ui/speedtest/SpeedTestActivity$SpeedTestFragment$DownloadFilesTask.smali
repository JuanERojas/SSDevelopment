.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "SpeedTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/net/URL;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final UPDATE_THRESHOLD:I = 0x64


# instance fields
.field private mConnectionLatency:J

.field private mExceptionThrown:Ljava/lang/Exception;

.field private mExpectedSizeInBytes:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 294
    iput p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExpectedSizeInBytes:I

    return-void
.end method

.method private calculate(J)J
    .locals 6

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mStartTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    const-wide/16 v4, 0x1

    :cond_0
    const-wide/16 v0, 0x8

    mul-long p1, p1, v0

    .line 411
    div-long/2addr p1, v4

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    return-wide p1
.end method

.method private getLatency(Ljava/lang/String;)J
    .locals 6

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 396
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    const/4 v3, 0x0

    .line 397
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 398
    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x50

    invoke-direct {v3, p1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x3a98

    invoke-virtual {v2, v3, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 399
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    return-wide v4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Long;
    .locals 13

    const/4 v0, 0x0

    .line 299
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->getLatency(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mConnectionLatency:J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 304
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 306
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "Connection"

    const-string v5, "close"

    .line 307
    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2710

    .line 308
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x1388

    .line 309
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 310
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 312
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mStartTime:J

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v3, 0x800

    .line 321
    new-array v3, v3, [B

    move-wide v8, v5

    const/4 v5, 0x0

    move-wide v6, v1

    .line 322
    :goto_0
    array-length v10, v3

    invoke-virtual {v4, v3, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 324
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :cond_0
    add-int/2addr v5, v10

    const-wide/16 v10, 0x64

    cmp-long v12, v6, v10

    if-ltz v12, :cond_1

    int-to-double v6, v5

    .line 330
    iget v8, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExpectedSizeInBytes:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v8

    double-to-int v6, v6

    int-to-long v7, v5

    .line 331
    invoke-direct {p0, v7, v8}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->calculate(J)J

    move-result-wide v7

    const/4 v9, 0x2

    .line 332
    new-array v9, v9, [Ljava/lang/Long;

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v0

    const/4 v6, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-virtual {p0, v9}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->publishProgress([Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v8, v6

    .line 336
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v10, 0x0

    sub-long v10, v6, v8

    move-wide v6, v10

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long v5, v5

    .line 339
    invoke-direct {p0, v5, v6}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->calculate(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 346
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_3
    if-eqz p1, :cond_4

    .line 352
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v3

    move-object v4, p1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object p1, v3

    .line 342
    :goto_2
    :try_start_4
    iput-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExceptionThrown:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_5

    .line 346
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_5
    if-eqz p1, :cond_6

    .line 352
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 356
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception v0

    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_7

    .line 346
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_7
    if-eqz p1, :cond_8

    .line 352
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 283
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Long;)V
    .locals 0

    .line 390
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$1100(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/Speedometer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/speedtest/Speedometer;->stop()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->onCancelled(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExceptionThrown:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExceptionThrown:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExceptionThrown:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mExceptionThrown:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    const v0, 0x7f120205

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    const v1, 0x7f120204

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$900(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$1100(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/Speedometer;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/speedtest/Speedometer;->update(IJ)V

    .line 376
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$900(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mConnectionLatency:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$1200(Lcom/tikilive/ui/speedtest/SpeedTestActivity;JJ)V

    .line 378
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 380
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$800(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$900(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->mConnectionLatency:J

    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$1300(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, v4, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->newInstance(JJLjava/lang/String;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    move-result-object p1

    const v1, 0x7f0a0111

    .line 384
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 385
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$1100(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/Speedometer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tikilive/ui/speedtest/Speedometer;->update(IJ)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
