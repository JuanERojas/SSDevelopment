.class public Lcom/github/snowdream/android/app/dao/DatabaseConfigUtil;
.super Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;
.source "DatabaseConfigUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "ormlite_config.txt"

    .line 36
    invoke-static {p0}, Lcom/github/snowdream/android/app/dao/DatabaseConfigUtil;->writeConfigFile(Ljava/lang/String;)V

    return-void
.end method
