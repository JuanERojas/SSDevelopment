.class public Lcom/github/snowdream/android/util/Log2File;
.super Ljava/lang/Object;
.source "Log2File.java"


# static fields
.field private static executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetFileFromPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Error"

    const-string v0, "The path of Log file is Null."

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Error"

    const-string v1, "The Log file can not be written."

    .line 108
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Success"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Log file was successfully created! -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "Success"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Log file exist! -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Error"

    const-string v1, "The Log file can not be written."

    .line 122
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Error"

    const-string v2, "Failed to create The Log file."

    .line 125
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v0
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/github/snowdream/android/util/Log2File;->GetFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method protected static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 42
    sget-object v0, Lcom/github/snowdream/android/util/Log2File;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected static log2file(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    sget-object v0, Lcom/github/snowdream/android/util/Log2File;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/github/snowdream/android/util/Log2File;->executor:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/util/Log2File;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/github/snowdream/android/util/Log2File;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/github/snowdream/android/util/Log2File$1;

    invoke-direct {v1, p0, p1}, Lcom/github/snowdream/android/util/Log2File$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected static setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/github/snowdream/android/util/Log2File;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
