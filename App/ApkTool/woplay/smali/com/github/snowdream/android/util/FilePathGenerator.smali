.class public abstract Lcom/github/snowdream/android/util/FilePathGenerator;
.super Ljava/lang/Object;
.source "FilePathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;,
        Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;,
        Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;
    }
.end annotation


# instance fields
.field protected dir:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field protected filename:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field protected suffix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->path:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/snowdream/android/log"

    .line 18
    iput-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->dir:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->file:Ljava/io/File;

    const-string v0, "app"

    .line 24
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->filename:Ljava/lang/String;

    const-string v0, ".log"

    .line 29
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->suffix:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->path:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/snowdream/android/log"

    .line 18
    iput-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->dir:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->file:Ljava/io/File;

    const-string v0, "app"

    .line 24
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->filename:Ljava/lang/String;

    const-string v0, ".log"

    .line 29
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->suffix:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The Context should not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "snowdream"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->dir:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iput-object p2, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->filename:Ljava/lang/String;

    .line 55
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 56
    iput-object p3, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->suffix:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->path:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/snowdream/android/log"

    .line 18
    iput-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->dir:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->file:Ljava/io/File;

    const-string v0, "app"

    .line 24
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->filename:Ljava/lang/String;

    const-string v0, ".log"

    .line 29
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->suffix:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->dir:Ljava/lang/String;

    .line 73
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    iput-object p2, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->filename:Ljava/lang/String;

    .line 77
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 78
    iput-object p3, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->suffix:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract generateFilePath()Ljava/lang/String;
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/github/snowdream/android/util/FilePathGenerator;->isGenerate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/github/snowdream/android/util/FilePathGenerator;->generateFilePath()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/util/FilePathGenerator;->onGenerate(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->path:Ljava/lang/String;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator;->path:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isGenerate()Ljava/lang/Boolean;
.end method

.method public abstract onGenerate(Ljava/lang/String;Ljava/lang/String;)V
.end method
