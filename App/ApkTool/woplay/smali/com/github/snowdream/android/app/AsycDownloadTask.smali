.class public Lcom/github/snowdream/android/app/AsycDownloadTask;
.super Lcom/github/snowdream/android/util/concurrent/AsyncTask;
.source "AsycDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;,
        Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/snowdream/android/util/concurrent/AsyncTask<",
        "Lcom/github/snowdream/android/app/DownloadTask;",
        "Ljava/lang/Integer;",
        "Lcom/github/snowdream/android/app/DownloadTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_ADD:I = 0x2

.field private static final MESSAGE_POST_ERROR:I = 0x1

.field private static final MODE_DEFAULT:I = 0x1

.field private static final MODE_TRUNKED:I = 0x2

.field private static final STORE_PATH:Ljava/lang/String; = "/mnt/sdcard/snowdream/android/downloader/"

.field private static final sHandler:Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;


# instance fields
.field private isOnlyGetHead:Z

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;-><init>(Lcom/github/snowdream/android/app/AsycDownloadTask$1;)V

    sput-object v0, Lcom/github/snowdream/android/app/AsycDownloadTask;->sHandler:Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/DownloadListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/DownloadListener<",
            "Ljava/lang/Integer;",
            "Lcom/github/snowdream/android/app/DownloadTask;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/util/concurrent/AsyncTask;-><init>(Lcom/github/snowdream/android/util/concurrent/TaskListener;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->isOnlyGetHead:Z

    const/4 p1, 0x1

    .line 56
    iput p1, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->mode:I

    .line 60
    iput-boolean p2, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->isOnlyGetHead:Z

    return-void
.end method

.method private OnAdd(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    instance-of v0, v0, Lcom/github/snowdream/android/app/DownloadListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    check-cast v0, Lcom/github/snowdream/android/app/DownloadListener;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/DownloadListener;->onAdd(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private OnError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/github/snowdream/android/app/AsycDownloadTask;->listener:Lcom/github/snowdream/android/util/concurrent/TaskListener;

    new-instance v0, Lcom/github/snowdream/android/app/DownloadException;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p2}, Lcom/github/snowdream/android/app/DownloadException;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/util/concurrent/TaskListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private SaveDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;I)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/DownloadTask;->setStatus(I)V

    .line 101
    new-instance p2, Lcom/github/snowdream/android/app/dao/ISqlImpl;

    invoke-direct {p2, v0}, Lcom/github/snowdream/android/app/dao/ISqlImpl;-><init>(Landroid/content/Context;)V

    .line 104
    :try_start_0
    invoke-interface {p2, p1}, Lcom/github/snowdream/android/app/dao/ISql;->addDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private SendAdd(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 3

    .line 121
    sget-object v0, Lcom/github/snowdream/android/app/AsycDownloadTask;->sHandler:Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;

    new-instance v1, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;-><init>(Lcom/github/snowdream/android/util/concurrent/AsyncTask;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "Errors happen while downloading."

    .line 111
    invoke-static {v0}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SaveDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;I)V

    .line 114
    sget-object v0, Lcom/github/snowdream/android/app/AsycDownloadTask;->sHandler:Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;

    new-instance v1, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/snowdream/android/app/AsycDownloadTask$AsyncTaskResult;-><init>(Lcom/github/snowdream/android/util/concurrent/AsyncTask;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/github/snowdream/android/app/AsycDownloadTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$100(Lcom/github/snowdream/android/app/AsycDownloadTask;Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/github/snowdream/android/app/AsycDownloadTask;->OnError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/snowdream/android/app/AsycDownloadTask;Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/AsycDownloadTask;->OnAdd(Lcom/github/snowdream/android/app/DownloadTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/github/snowdream/android/app/DownloadTask;)Lcom/github/snowdream/android/app/DownloadTask;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 132
    array-length v3, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    const-string v2, "There is no DownloadTask."

    .line 133
    invoke-static {v2}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V

    return-object v4

    :cond_0
    const/4 v3, 0x0

    .line 137
    aget-object v2, v2, v3

    if-eqz v2, :cond_30

    .line 139
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_3b

    .line 146
    :cond_1
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 147
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 155
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getSize()J

    move-result-wide v11

    .line 157
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v13

    .line 158
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v15
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v3, 0x5

    if-ne v15, v3, :cond_2

    cmp-long v15, v11, v9

    if-nez v15, :cond_2

    :try_start_1
    const-string v3, "The DownloadTask has already been downloaded."

    .line 161
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    move-object v5, v3

    goto/16 :goto_37

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v5, v4

    move-object v10, v5

    :goto_0
    const/16 v6, 0xb

    goto/16 :goto_25

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v5, v4

    move-object v10, v5

    :goto_1
    const/16 v6, 0xb

    goto/16 :goto_29

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v5, v4

    move-object v10, v5

    :goto_2
    const/16 v6, 0xb

    goto/16 :goto_2d

    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v5, v4

    move-object v10, v5

    :goto_3
    const/16 v6, 0xb

    goto/16 :goto_32

    .line 165
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v3, v4

    move-wide/from16 v17, v9

    move-wide/from16 v8, v17

    move-object v10, v3

    .line 168
    :goto_4
    :try_start_3
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string v10, "User-Agent"

    const-string v5, "Snowdream Mobile"

    .line 170
    invoke-virtual {v4, v10, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Connection"

    const-string v10, "Keep-Alive"

    .line 171
    invoke-virtual {v4, v5, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const-string v5, ""

    if-eq v3, v5, :cond_3

    const-string v5, "Cookie"

    .line 173
    invoke-virtual {v4, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, "GET"

    .line 175
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-wide/16 v19, 0x0

    cmp-long v5, v8, v19

    if-lez v5, :cond_4

    const-string v5, "Range"

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string v3, "bytes="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    move-object/from16 v21, v3

    .line 188
    :goto_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP STATUS CODE: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_5

    const/16 v5, 0xce

    if-eq v3, v5, :cond_5

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    :goto_6
    const/4 v5, 0x0

    goto :goto_9

    :pswitch_0
    const-string v3, "Location"

    .line 220
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Set-Cookie"

    .line 223
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Redirect Url : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    move-object v15, v3

    move-object/from16 v21, v5

    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    const-string v3, "Transfer-Encoding"

    .line 196
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "chunked"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    .line 199
    iput v3, v1, Lcom/github/snowdream/android/app/AsycDownloadTask;->mode:I

    const-string v3, "HTTP MODE: TRUNKED"

    .line 200
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const/4 v3, 0x1

    .line 202
    iput v3, v1, Lcom/github/snowdream/android/app/AsycDownloadTask;->mode:I

    const-string v3, "HTTP MODE: DEFAULT"

    .line 203
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    :goto_7
    const-string v3, "Accept-Ranges"

    .line 206
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "bytes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Accept-Ranges: bytes"

    .line 209
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string v3, "Accept-Ranges: none"

    .line 212
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    move-wide/from16 v8, v19

    :goto_8
    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_9
    if-nez v3, :cond_23

    if-nez v5, :cond_9

    const/16 v3, 0xb

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    const-string v3, "Http Connection error. "

    .line 236
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_8

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    const/4 v2, 0x0

    return-object v2

    :cond_9
    :try_start_5
    const-string v3, "Successed to establish the http connection.Ready to download..."

    .line 239
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    cmp-long v3, v8, v19

    if-nez v3, :cond_10

    .line 246
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v11, v3

    .line 247
    invoke-virtual {v2, v11, v12}, Lcom/github/snowdream/android/app/DownloadTask;->setSize(J)V

    .line 249
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eq v14, v3, :cond_a

    .line 250
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/DownloadTask;->setMimeType(Ljava/lang/String;)V

    .line 255
    :cond_a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "Content-Disposition"

    .line 256
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v5, "filename="

    .line 260
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v10, 0x3b

    .line 261
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const-string v13, "filename="

    .line 262
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v5, v13

    if-lez v10, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    :goto_a
    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_c
    const-string v3, "/"

    .line 265
    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_b
    move-object v13, v3

    .line 268
    invoke-virtual {v2, v13}, Lcom/github/snowdream/android/app/DownloadTask;->setName(Ljava/lang/String;)V

    .line 272
    :cond_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/mnt/sdcard/snowdream/android/downloader/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/DownloadTask;->setPath(Ljava/lang/String;)V

    move-object v7, v5

    .line 280
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/github/snowdream/android/app/DownloadTask;->setStartTime(J)V

    .line 282
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SaveDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;I)V

    const-string v3, "The Task is stored in the sqlite."

    .line 283
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    .line 285
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/AsycDownloadTask;->isOnlyGetHead:Z

    if-eqz v3, :cond_10

    .line 286
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendAdd(Lcom/github/snowdream/android/app/DownloadTask;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_f

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    const/4 v2, 0x0

    return-object v2

    .line 291
    :cond_10
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_12

    const/16 v3, 0xb

    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    const-string v3, "The directory of the file can not be created!"

    .line 295
    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_11

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    const/4 v2, 0x0

    return-object v2

    :cond_12
    const/4 v3, 0x2

    .line 298
    :try_start_7
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/DownloadTask;->setStatus(I)V

    .line 299
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SaveDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;I)V

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadTask "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    .line 303
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, v7, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 304
    :try_start_8
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 306
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/16 v6, 0x400

    .line 308
    :try_start_9
    new-array v8, v6, [B

    const/4 v9, -0x1

    :goto_c
    const/4 v10, 0x0

    .line 312
    invoke-virtual {v5, v8, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-lez v13, :cond_16

    .line 313
    invoke-virtual {v3, v8, v10, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v13, v13

    move-object/from16 v22, v7

    add-long v6, v17, v13

    cmp-long v10, v11, v19

    if-eqz v10, :cond_13

    const-wide/16 v9, 0x64

    mul-long v9, v9, v6

    .line 318
    div-long/2addr v9, v11

    long-to-int v9, v9

    :cond_13
    const/4 v10, 0x1

    .line 321
    new-array v13, v10, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v13, v16

    invoke-virtual {v1, v13}, Lcom/github/snowdream/android/app/AsycDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cur size:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "    total size:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "    cur progress:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/github/snowdream/android/app/AsycDownloadTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v8, 0x3

    .line 326
    invoke-virtual {v2, v8}, Lcom/github/snowdream/android/app/DownloadTask;->setStatus(I)V

    goto :goto_d

    .line 331
    :cond_14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v10

    const/4 v13, 0x2

    if-eq v10, v13, :cond_15

    goto :goto_d

    :cond_15
    move-wide/from16 v17, v6

    move-object/from16 v7, v22

    const/16 v6, 0x400

    goto :goto_c

    :cond_16
    move-object/from16 v22, v7

    move-wide/from16 v6, v17

    const/16 v16, 0x1

    :goto_d
    if-nez v16, :cond_1a

    const-string v6, "The DownloadTask has not been completely downloaded."

    .line 338
    invoke-static {v6}, Lcom/github/snowdream/android/util/Log;->w(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getStatus()I

    move-result v6

    invoke-direct {v1, v2, v6}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SaveDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;I)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_17

    .line 381
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :cond_17
    :goto_e
    if-eqz v3, :cond_18

    .line 385
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_10

    .line 388
    :goto_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_10
    if-eqz v4, :cond_19

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    const/4 v2, 0x0

    return-object v2

    :cond_1a
    cmp-long v8, v11, v19

    if-nez v8, :cond_1b

    cmp-long v8, v6, v19

    if-eqz v8, :cond_1b

    .line 345
    :try_start_b
    invoke-virtual {v2, v6, v7}, Lcom/github/snowdream/android/app/DownloadTask;->setSize(J)V

    :cond_1b
    move-object/from16 v7, v22

    .line 348
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 349
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/DownloadTask;->getSize()J

    move-result-wide v8

    .line 350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "range: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    cmp-long v10, v6, v19

    if-eqz v10, :cond_1f

    cmp-long v10, v6, v8

    if-nez v10, :cond_1f

    const-string v6, "The DownloadTask has been successfully downloaded."

    .line 353
    invoke-static {v6}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/github/snowdream/android/app/DownloadTask;->setFinishTime(J)V

    const/4 v10, 0x5

    .line 355
    invoke-direct {v1, v2, v10}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SaveDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;I)V
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_1c

    .line 381
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v3, v0

    goto :goto_12

    :cond_1c
    :goto_11
    if-eqz v3, :cond_1d

    .line 385
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_13

    .line 388
    :goto_12
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_13
    if-eqz v4, :cond_1e

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e
    return-object v2

    :cond_1f
    :try_start_d
    const-string v6, "The DownloadTask failed to downloaded."

    .line 358
    invoke-static {v6}, Lcom/github/snowdream/android/util/Log;->i(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/16 v6, 0xb

    .line 359
    :try_start_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-direct {v1, v2, v7}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v5, :cond_20

    .line 381
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_15

    :cond_20
    :goto_14
    if-eqz v3, :cond_21

    .line 385
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_16

    .line 388
    :goto_15
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_16
    if-eqz v4, :cond_22

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_22
    const/4 v2, 0x0

    return-object v2

    :catch_7
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    goto :goto_17

    :catch_8
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    goto :goto_18

    :catch_9
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    goto :goto_19

    :catch_a
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    goto :goto_1a

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_37

    :catch_b
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    const/16 v6, 0xb

    :goto_17
    move-object v5, v3

    goto :goto_1b

    :catch_c
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    const/16 v6, 0xb

    :goto_18
    move-object v5, v3

    goto :goto_1c

    :catch_d
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    const/16 v6, 0xb

    :goto_19
    move-object v5, v3

    goto :goto_1d

    :catch_e
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    const/16 v6, 0xb

    :goto_1a
    move-object v5, v3

    goto :goto_1e

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_24

    :catch_f
    move-exception v0

    move-object v5, v3

    move-object v10, v4

    const/4 v4, 0x0

    const/16 v6, 0xb

    :goto_1b
    move-object v3, v0

    goto/16 :goto_25

    :catch_10
    move-exception v0

    move-object v5, v3

    move-object v10, v4

    const/4 v4, 0x0

    const/16 v6, 0xb

    :goto_1c
    move-object v3, v0

    goto/16 :goto_29

    :catch_11
    move-exception v0

    move-object v5, v3

    move-object v10, v4

    const/4 v4, 0x0

    const/16 v6, 0xb

    :goto_1d
    move-object v3, v0

    goto/16 :goto_2d

    :catch_12
    move-exception v0

    move-object v5, v3

    move-object v10, v4

    const/4 v4, 0x0

    const/16 v6, 0xb

    :goto_1e
    move-object v3, v0

    goto/16 :goto_32

    :cond_23
    const/16 v16, 0x0

    move-object v10, v4

    move-object/from16 v3, v21

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_1f

    :catch_13
    move-exception v0

    move-object v3, v0

    move-object v10, v4

    goto :goto_20

    :catch_14
    move-exception v0

    move-object v3, v0

    move-object v10, v4

    goto :goto_21

    :catch_15
    move-exception v0

    move-object v3, v0

    move-object v10, v4

    goto :goto_22

    :catch_16
    move-exception v0

    move-object v3, v0

    move-object v10, v4

    goto :goto_23

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v4, v10

    :goto_1f
    const/4 v3, 0x0

    goto :goto_24

    :catch_17
    move-exception v0

    move-object v3, v0

    :goto_20
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_18
    move-exception v0

    move-object v3, v0

    :goto_21
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_19
    move-exception v0

    move-object v3, v0

    :goto_22
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    move-object v3, v0

    :goto_23
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    const/4 v5, 0x0

    goto/16 :goto_37

    :catch_1b
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v10, 0x0

    .line 375
    :goto_25
    :try_start_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    .line 377
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v4, :cond_24

    .line 381
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_26

    :catch_1c
    move-exception v0

    move-object v2, v0

    goto :goto_27

    :cond_24
    :goto_26
    if-eqz v5, :cond_25

    .line 385
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1c

    goto :goto_28

    .line 388
    :goto_27
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_25
    :goto_28
    if-eqz v10, :cond_2c

    goto :goto_31

    :catch_1d
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v10, 0x0

    .line 371
    :goto_29
    :try_start_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    .line 373
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v4, :cond_26

    .line 381
    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2a

    :catch_1e
    move-exception v0

    move-object v2, v0

    goto :goto_2b

    :cond_26
    :goto_2a
    if-eqz v5, :cond_27

    .line 385
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1e

    goto :goto_2c

    .line 388
    :goto_2b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_27
    :goto_2c
    if-eqz v10, :cond_2c

    goto :goto_31

    :catch_1f
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v10, 0x0

    .line 367
    :goto_2d
    :try_start_15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    .line 369
    invoke-virtual {v3}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-eqz v4, :cond_28

    .line 381
    :try_start_16
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    :catch_20
    move-exception v0

    move-object v2, v0

    goto :goto_2f

    :cond_28
    :goto_2e
    if-eqz v5, :cond_29

    .line 385
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_20

    goto :goto_30

    .line 388
    :goto_2f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_29
    :goto_30
    if-eqz v10, :cond_2c

    :goto_31
    goto :goto_36

    :catch_21
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v10, 0x0

    .line 363
    :goto_32
    :try_start_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    .line 365
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v4, :cond_2a

    .line 381
    :try_start_18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_33

    :catch_22
    move-exception v0

    move-object v2, v0

    goto :goto_34

    :cond_2a
    :goto_33
    if-eqz v5, :cond_2b

    .line 385
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_22

    goto :goto_35

    .line 388
    :goto_34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2b
    :goto_35
    if-eqz v10, :cond_2c

    .line 392
    :goto_36
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2c
    const/4 v2, 0x0

    return-object v2

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    move-object v5, v4

    move-object v4, v10

    :goto_37
    if-eqz v5, :cond_2d

    .line 381
    :try_start_19
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_38

    :catch_23
    move-exception v0

    move-object v3, v0

    goto :goto_39

    :cond_2d
    :goto_38
    if-eqz v3, :cond_2e

    .line 385
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_23

    goto :goto_3a

    .line 388
    :goto_39
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_3a
    if-eqz v4, :cond_2f

    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2f
    throw v2

    :cond_30
    :goto_3b
    const/4 v3, 0x1

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/github/snowdream/android/app/AsycDownloadTask;->SendError(Lcom/github/snowdream/android/app/DownloadTask;Ljava/lang/Integer;)V

    const-string v2, "The task is not valid,or the url of the task is not valid."

    .line 142
    invoke-static {v2}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, [Lcom/github/snowdream/android/app/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/AsycDownloadTask;->doInBackground([Lcom/github/snowdream/android/app/DownloadTask;)Lcom/github/snowdream/android/app/DownloadTask;

    move-result-object p1

    return-object p1
.end method
