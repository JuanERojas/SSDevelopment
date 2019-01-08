.class public Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;
.super Lcom/github/snowdream/android/util/FilePathGenerator;
.source "FilePathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/FilePathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultFilePathGenerator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/FilePathGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/github/snowdream/android/util/FilePathGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateFilePath()Ljava/lang/String;
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->dir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 168
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->file:Ljava/io/File;

    .line 170
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGenerate()Ljava/lang/Boolean;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/snowdream/android/util/FilePathGenerator$DefaultFilePathGenerator;->file:Ljava/io/File;

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
