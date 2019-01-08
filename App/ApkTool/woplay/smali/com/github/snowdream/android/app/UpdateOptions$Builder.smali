.class public Lcom/github/snowdream/android/app/UpdateOptions$Builder;
.super Ljava/lang/Object;
.source "UpdateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/UpdateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoUpdate:Z

.field private checkPackageName:Z

.field private checkUpdate:Z

.field private checkUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private forceUpdate:Z

.field private updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

.field private updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/github/snowdream/android/app/UpdatePeriod;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/snowdream/android/app/UpdatePeriod;-><init>(I)V

    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    .line 135
    iput-boolean v1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->forceUpdate:Z

    .line 136
    iput-boolean v1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->autoUpdate:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUrl:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->context:Landroid/content/Context;

    .line 139
    iput-boolean v1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUpdate:Z

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkPackageName:Z

    .line 141
    sget-object v0, Lcom/github/snowdream/android/app/UpdateFormat;->JSON:Lcom/github/snowdream/android/app/UpdateFormat;

    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Lcom/github/snowdream/android/app/UpdatePeriod;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->forceUpdate:Z

    return p0
.end method

.method static synthetic access$200(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUpdate:Z

    return p0
.end method

.method static synthetic access$300(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->autoUpdate:Z

    return p0
.end method

.method static synthetic access$400(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkPackageName:Z

    return p0
.end method

.method static synthetic access$500(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Landroid/content/Context;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Lcom/github/snowdream/android/app/UpdateFormat;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

    return-object p0
.end method


# virtual methods
.method public autoUpdate(Z)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->autoUpdate:Z

    return-object p0
.end method

.method public build()Lcom/github/snowdream/android/app/UpdateOptions;
    .locals 2

    .line 230
    new-instance v0, Lcom/github/snowdream/android/app/UpdateOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/snowdream/android/app/UpdateOptions;-><init>(Lcom/github/snowdream/android/app/UpdateOptions$Builder;Lcom/github/snowdream/android/app/UpdateOptions$1;)V

    return-object v0
.end method

.method public checkPackageName(Z)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkPackageName:Z

    return-object p0
.end method

.method public checkUpdate(Z)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUpdate:Z

    return-object p0
.end method

.method public checkUrl(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->checkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public forceUpdate(Z)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->forceUpdate:Z

    return-object p0
.end method

.method public updateFormat(Lcom/github/snowdream/android/app/UpdateFormat;)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

    return-object p0
.end method

.method public updatePeriod(Lcom/github/snowdream/android/app/UpdatePeriod;)Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    return-object p0
.end method
