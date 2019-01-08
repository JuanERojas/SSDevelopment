.class public abstract Lcom/github/snowdream/android/app/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"


# static fields
.field public static final TAG_APK_URL:Ljava/lang/String; = "apkUrl"

.field public static final TAG_APP_DESCRIPTION:Ljava/lang/String; = "appDescription"

.field public static final TAG_APP_NAME:Ljava/lang/String; = "appName"

.field public static final TAG_AUTO_UPDATE:Ljava/lang/String; = "autoUpdate"

.field public static final TAG_FORCE_UPDATE:Ljava/lang/String; = "forceUpdate"

.field public static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TAG_UPDATE_INFO:Ljava/lang/String; = "updateInfo"

.field public static final TAG_UPDATE_TIPS:Ljava/lang/String; = "updateTips"

.field public static final TAG_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final TAG_VERSION_NAME:Ljava/lang/String; = "versionName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parse(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/snowdream/android/app/UpdateException;
        }
    .end annotation
.end method
