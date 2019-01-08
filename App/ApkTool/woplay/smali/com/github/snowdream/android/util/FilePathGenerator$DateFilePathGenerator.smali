.class public Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;
.super Lcom/github/snowdream/android/util/FilePathGenerator;
.source "FilePathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/FilePathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateFilePathGenerator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/FilePathGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/FilePathGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateFilePath()Ljava/lang/String;
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->dir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 234
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyy-MM-dd"

    .line 235
    invoke-static {v2}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v2

    .line 236
    invoke-virtual {v2, v1}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    iget-object v3, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-"

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->file:Ljava/io/File;

    .line 246
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGenerate()Ljava/lang/Boolean;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DateFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

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
