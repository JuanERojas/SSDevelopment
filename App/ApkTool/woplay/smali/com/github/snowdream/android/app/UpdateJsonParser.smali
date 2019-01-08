.class public Lcom/github/snowdream/android/app/UpdateJsonParser;
.super Lcom/github/snowdream/android/app/AbstractParser;
.source "UpdateJsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/github/snowdream/android/app/AbstractParser;-><init>()V

    return-void
.end method

.method private parseUpdateInfo(Lcom/google/gson/stream/JsonReader;)Lcom/github/snowdream/android/app/UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/UpdateInfo;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 76
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "appDescription"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setAppDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "packageName"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setPackageName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "versionCode"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setVersionCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "versionName"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "forceUpdate"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setForceUpdate(Z)V

    goto :goto_0

    :cond_5
    const-string v2, "autoUpdate"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setAutoUpdate(Z)V

    goto :goto_0

    :cond_6
    const-string v2, "apkUrl"

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 93
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setApkUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "updateTips"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateJsonParser;->parseUpdateTips(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/UpdateInfo;->setUpdateTips(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 98
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 101
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0
.end method

.method private parseUpdateTips(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/snowdream/android/app/UpdateException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 33
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1

    .line 36
    :cond_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 38
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateInfo"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/UpdateJsonParser;->parseUpdateInfo(Lcom/google/gson/stream/JsonReader;)Lcom/github/snowdream/android/app/UpdateInfo;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "jsonReader.close()"

    .line 58
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 50
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "IOException"

    .line 51
    invoke-static {v2, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    throw p1

    :catch_2
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "jsonReader.close()"

    .line 58
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1
.end method
