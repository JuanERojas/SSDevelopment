.class public final Lcom/github/snowdream/android/app/UpdateOptions;
.super Ljava/lang/Object;
.source "UpdateOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/app/UpdateOptions$Builder;
    }
.end annotation


# instance fields
.field private final autoUpdate:Z

.field private final checkPackageName:Z

.field private final checkUpdate:Z

.field private final checkUrl:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final forceUpdate:Z

.field private final updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

.field private final updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;


# direct methods
.method private constructor <init>(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$000(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Lcom/github/snowdream/android/app/UpdatePeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    .line 23
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$100(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->forceUpdate:Z

    .line 24
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$200(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->checkUpdate:Z

    .line 25
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$300(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->autoUpdate:Z

    .line 26
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$400(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->checkPackageName:Z

    .line 27
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$500(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->checkUrl:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$600(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateOptions$Builder;->access$700(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)Lcom/github/snowdream/android/app/UpdateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/github/snowdream/android/app/UpdateOptions;->updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/snowdream/android/app/UpdateOptions$Builder;Lcom/github/snowdream/android/app/UpdateOptions$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/github/snowdream/android/app/UpdateOptions;-><init>(Lcom/github/snowdream/android/app/UpdateOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getCheckUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->checkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFormat()Lcom/github/snowdream/android/app/UpdateFormat;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->updateFormat:Lcom/github/snowdream/android/app/UpdateFormat;

    return-object v0
.end method

.method public getUpdatePeriod()Lcom/github/snowdream/android/app/UpdatePeriod;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    return-object v0
.end method

.method public shouldAutoUpdate()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->autoUpdate:Z

    return v0
.end method

.method public shouldCheckPackageName()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->checkPackageName:Z

    return v0
.end method

.method public shouldCheckUpdate()Z
    .locals 12

    .line 40
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->checkUpdate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 50
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 52
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/github/snowdream/android/app/updater/R$string;->preference_name:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v5, p0, Lcom/github/snowdream/android/app/UpdateOptions;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/github/snowdream/android/app/updater/R$string;->preference_key_next_check_update_time:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 54
    iget-object v6, p0, Lcom/github/snowdream/android/app/UpdateOptions;->context:Landroid/content/Context;

    invoke-virtual {v6, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v6, -0x1

    .line 55
    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    return v1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->updatePeriod:Lcom/github/snowdream/android/app/UpdatePeriod;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/UpdatePeriod;->getPeriodMillis()J

    move-result-wide v10

    goto :goto_0

    :cond_3
    move-wide v10, v5

    :goto_0
    cmp-long v0, v10, v5

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    add-long v5, v3, v10

    cmp-long v0, v5, v8

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public shouldForceUpdate()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/UpdateOptions;->forceUpdate:Z

    return v0
.end method
