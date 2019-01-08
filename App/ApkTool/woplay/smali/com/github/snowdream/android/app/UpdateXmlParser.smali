.class public Lcom/github/snowdream/android/app/UpdateXmlParser;
.super Lcom/github/snowdream/android/app/AbstractParser;
.source "UpdateXmlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/github/snowdream/android/app/AbstractParser;-><init>()V

    return-void
.end method

.method private parseUpdateInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/github/snowdream/android/app/UpdateInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    if-eqz v0, :cond_b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 72
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updateInfo"

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    new-instance v0, Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/UpdateInfo;-><init>()V

    move-object v1, v0

    goto/16 :goto_3

    :cond_0
    const-string v3, "appName"

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_b

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setAppName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const-string v3, "appDescription"

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_b

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setAppDescription(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v3, "packageName"

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_b

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setPackageName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string v3, "versionCode"

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_b

    .line 89
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setVersionCode(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v3, "versionName"

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_b

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v3, "forceUpdate"

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    if-eqz v1, :cond_b

    .line 97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    if-ne v0, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/UpdateInfo;->setForceUpdate(Z)V

    goto :goto_3

    :cond_7
    const-string v3, "autoUpdate"

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_b

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    if-ne v0, v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/UpdateInfo;->setAutoUpdate(Z)V

    goto :goto_3

    :cond_9
    const-string v2, "apkUrl"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_b

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setApkUrl(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v2, "updateTips"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateXmlParser;->parseUpdateTips(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v0

    if-eqz v1, :cond_b

    .line 110
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/UpdateInfo;->setUpdateTips(Ljava/util/Map;)V

    .line 121
    :cond_b
    :goto_3
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_c
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseUpdateTips(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 146
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateTips"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 150
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_1
    :goto_1
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/snowdream/android/app/UpdateException;
        }
    .end annotation

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 32
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 40
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/UpdateXmlParser;->parseUpdateInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/github/snowdream/android/app/UpdateInfo;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "IOException"

    .line 47
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const-string v0, "XmlPullParserException"

    .line 43
    invoke-static {v0, p1}, Lcom/github/snowdream/android/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    new-instance p1, Lcom/github/snowdream/android/app/UpdateException;

    invoke-direct {p1, v1}, Lcom/github/snowdream/android/app/UpdateException;-><init>(I)V

    throw p1
.end method
