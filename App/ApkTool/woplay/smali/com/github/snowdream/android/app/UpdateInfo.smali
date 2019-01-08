.class public Lcom/github/snowdream/android/app/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field private apkUrl:Ljava/lang/String;

.field private appDescription:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private autoUpdate:Z

.field private forceUpdate:Z

.field private packageName:Ljava/lang/String;

.field private updateTips:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->appName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->appDescription:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->packageName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->versionCode:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->versionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->forceUpdate:Z

    .line 15
    iput-boolean v1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->autoUpdate:Z

    .line 16
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->apkUrl:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->updateTips:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDescription()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->appDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTips()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->updateTips:Ljava/util/Map;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoUpdate()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->autoUpdate:Z

    return v0
.end method

.method public isForceUpdate()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateInfo;->forceUpdate:Z

    return v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->apkUrl:Ljava/lang/String;

    return-void
.end method

.method public setAppDescription(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->appDescription:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAutoUpdate(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->autoUpdate:Z

    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->forceUpdate:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTips(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->updateTips:Ljava/util/Map;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateInfo;->versionName:Ljava/lang/String;

    return-void
.end method
