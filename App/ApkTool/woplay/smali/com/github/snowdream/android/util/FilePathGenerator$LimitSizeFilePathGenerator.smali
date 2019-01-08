.class public Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;
.super Lcom/github/snowdream/android/util/FilePathGenerator;
.source "FilePathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/FilePathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitSizeFilePathGenerator"
.end annotation


# instance fields
.field private maxSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/FilePathGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->maxSize:I

    .line 284
    iput p4, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->maxSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/FilePathGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->maxSize:I

    .line 298
    iput p4, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->maxSize:I

    return-void
.end method


# virtual methods
.method public generateFilePath()Ljava/lang/String;
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->dir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 314
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    .line 315
    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v2

    .line 316
    invoke-virtual {v2, v1}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 319
    iget-object v3, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-"

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    iget-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    .line 326
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGenerate()Ljava/lang/Boolean;
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/github/snowdream/android/util/FilePathGenerator$LimitSizeFilePathGenerator;->maxSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onGenerate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
