.class public final Lcom/github/snowdream/android/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/util/Log$LEVEL;
    }
.end annotation


# static fields
.field public static GLOBAL_TAG:Ljava/lang/String; = ""

.field public static final LOG_ALL_TO_FILE:I = 0x3

.field public static final LOG_ERROR_TO_FILE:I = 0x2

.field public static final LOG_NONE_TO_FILE:I = 0x0

.field public static final LOG_WARN_TO_FILE:I = 0x1

.field private static filters:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/util/LogFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static formatter:Lcom/github/snowdream/android/util/LogFormatter; = null

.field private static generator:Lcom/github/snowdream/android/util/FilePathGenerator; = null

.field protected static isEnabled:Z = true

.field protected static isLog2ConsoleEnabled:Z = true

.field protected static isLog2FileEnabled:Z = false

.field protected static policy:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static addLogFilter(Lcom/github/snowdream/android/util/LogFilter;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 417
    :cond_0
    sget-object v1, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    if-nez v1, :cond_1

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    .line 421
    :cond_1
    sget-object v1, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/util/LogFilter;

    .line 422
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    .line 429
    sget-object v1, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return v0
.end method

.method public static clearLogFilters()V
    .locals 1

    .line 463
    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 650
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 643
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 660
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0, p1, p2}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 670
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 688
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 679
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 698
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0, p1, p2}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 708
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getCurrentTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 215
    :cond_0
    sget-object p0, Lcom/github/snowdream/android/util/Log;->GLOBAL_TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 216
    sget-object p0, Lcom/github/snowdream/android/util/Log;->GLOBAL_TAG:Ljava/lang/String;

    return-object p0

    .line 219
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 220
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/4 v0, 0x3

    .line 221
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 327
    invoke-static {}, Lcom/github/snowdream/android/util/Log2File;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePathGenerator()Lcom/github/snowdream/android/util/FilePathGenerator;
    .locals 1

    .line 371
    sget-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    return-object v0
.end method

.method public static getGlobalTag()Ljava/lang/String;
    .locals 1

    .line 609
    sget-object v0, Lcom/github/snowdream/android/util/Log;->GLOBAL_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/util/LogFilter;",
            ">;"
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    return-object v0
.end method

.method public static getLogFormatter()Lcom/github/snowdream/android/util/LogFormatter;
    .locals 1

    .line 389
    sget-object v0, Lcom/github/snowdream/android/util/Log;->formatter:Lcom/github/snowdream/android/util/LogFormatter;

    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 1

    .line 345
    sget-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    invoke-virtual {v0}, Lcom/github/snowdream/android/util/FilePathGenerator;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPolicy()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    sget v0, Lcom/github/snowdream/android/util/Log;->policy:I

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 579
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTag()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    sget-object v0, Lcom/github/snowdream/android/util/Log;->GLOBAL_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 726
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 717
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 736
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0, p1, p2}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 746
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .line 500
    sget-boolean v0, Lcom/github/snowdream/android/util/Log;->isEnabled:Z

    return v0
.end method

.method public static isLog2ConsoleEnabled()Z
    .locals 1

    .line 516
    sget-boolean v0, Lcom/github/snowdream/android/util/Log;->isLog2ConsoleEnabled:Z

    return v0
.end method

.method public static isLog2FileEnabled()Z
    .locals 1

    .line 533
    sget-boolean v0, Lcom/github/snowdream/android/util/Log;->isLog2FileEnabled:Z

    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 0

    .line 557
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 190
    sget-boolean v0, Lcom/github/snowdream/android/util/Log;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/github/snowdream/android/util/Log;->getCurrentTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    sget-boolean v0, Lcom/github/snowdream/android/util/Log;->isLog2ConsoleEnabled:Z

    if-eqz v0, :cond_1

    .line 197
    invoke-static {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/Log;->log2Console(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_1
    sget-boolean v0, Lcom/github/snowdream/android/util/Log;->isLog2FileEnabled:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-static {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/Log;->log2File(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method protected static log2Console(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 236
    sget-object v0, Lcom/github/snowdream/android/util/Log$1;->$SwitchMap$com$github$snowdream$android$util$Log$LEVEL:[I

    invoke-virtual {p0}, Lcom/github/snowdream/android/util/Log$LEVEL;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p3, :cond_0

    .line 276
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 278
    invoke-static {p1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    if-nez p3, :cond_2

    .line 269
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    if-nez p3, :cond_3

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 262
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    if-nez p3, :cond_5

    .line 253
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    if-nez p3, :cond_6

    .line 246
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_6
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_5
    if-nez p3, :cond_7

    .line 239
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_7
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static log2File(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 297
    sget-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    .line 301
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/util/Log;->formatter:Lcom/github/snowdream/android/util/LogFormatter;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcom/github/snowdream/android/util/LogFormatter$EclipseFormatter;

    invoke-direct {v0}, Lcom/github/snowdream/android/util/LogFormatter$EclipseFormatter;-><init>()V

    sput-object v0, Lcom/github/snowdream/android/util/Log;->formatter:Lcom/github/snowdream/android/util/LogFormatter;

    :cond_1
    const/4 v0, 0x0

    .line 307
    sget-object v1, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 308
    sget-object v1, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/util/LogFilter;

    .line 309
    invoke-virtual {v2, p0, p1, p2}, Lcom/github/snowdream/android/util/LogFilter;->filter(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    .line 317
    sget-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    invoke-virtual {v0}, Lcom/github/snowdream/android/util/FilePathGenerator;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/snowdream/android/util/Log;->formatter:Lcom/github/snowdream/android/util/LogFormatter;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/github/snowdream/android/util/LogFormatter;->format(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/github/snowdream/android/util/Log2File;->log2file(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 569
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static removeLogFilter(Lcom/github/snowdream/android/util/LogFilter;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 449
    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    sget-object v0, Lcom/github/snowdream/android/util/Log;->filters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 509
    sput-boolean p0, Lcom/github/snowdream/android/util/Log;->isEnabled:Z

    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 336
    invoke-static {p0}, Lcom/github/snowdream/android/util/Log2File;->setExecutor(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static setFilePathGenerator(Lcom/github/snowdream/android/util/FilePathGenerator;)V
    .locals 0

    .line 380
    sput-object p0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    return-void
.end method

.method public static setGlobalTag(Ljava/lang/String;)V
    .locals 0

    .line 618
    sput-object p0, Lcom/github/snowdream/android/util/Log;->GLOBAL_TAG:Ljava/lang/String;

    return-void
.end method

.method public static setLog2ConsoleEnabled(Z)V
    .locals 0

    .line 526
    sput-boolean p0, Lcom/github/snowdream/android/util/Log;->isLog2ConsoleEnabled:Z

    return-void
.end method

.method public static setLog2FileEnabled(Z)V
    .locals 0

    .line 543
    sput-boolean p0, Lcom/github/snowdream/android/util/Log;->isLog2FileEnabled:Z

    return-void
.end method

.method public static setLogFormatter(Lcom/github/snowdream/android/util/LogFormatter;)V
    .locals 0

    .line 398
    sput-object p0, Lcom/github/snowdream/android/util/Log;->formatter:Lcom/github/snowdream/android/util/LogFormatter;

    return-void
.end method

.method public static setPath(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    new-instance v0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log;->generator:Lcom/github/snowdream/android/util/FilePathGenerator;

    return-void
.end method

.method public static setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    invoke-static {p0}, Lcom/github/snowdream/android/util/Log;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public static setPolicy(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    sput p0, Lcom/github/snowdream/android/util/Log;->policy:I

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    sput-object p0, Lcom/github/snowdream/android/util/Log;->GLOBAL_TAG:Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .line 764
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 755
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 774
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0, p1, p2}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 784
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 811
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 802
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 821
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0, p1, p2}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 831
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 793
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    .line 858
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 849
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 868
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0, p1, p2}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 878
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    .line 840
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0}, Lcom/github/snowdream/android/util/Log;->log(Lcom/github/snowdream/android/util/Log$LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
