.class public Lcom/tikilive/ui/dvr/DvrUsage;
.super Ljava/lang/Object;
.source "DvrUsage.java"


# static fields
.field private static final PREFERENCES_FILE:Ljava/lang/String; = "DvrUsagePreferences"

.field private static final PREFERENCES_KEY_TOTAL:Ljava/lang/String; = "total"

.field private static final PREFERENCES_KEY_USED:Ljava/lang/String; = "used"

.field public static final UNLIMITED:I = -0x1

.field private static mInstance:Lcom/tikilive/ui/dvr/DvrUsage;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTotal:I

.field private mUsed:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mTotal:I

    .line 27
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mContext:Landroid/content/Context;

    .line 29
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mContext:Landroid/content/Context;

    const-string v1, "DvrUsagePreferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "used"

    .line 30
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mUsed:I

    const-string v1, "total"

    .line 31
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mTotal:I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tikilive/ui/dvr/DvrUsage;
    .locals 2

    const-class v0, Lcom/tikilive/ui/dvr/DvrUsage;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/dvr/DvrUsage;->mInstance:Lcom/tikilive/ui/dvr/DvrUsage;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/tikilive/ui/dvr/DvrUsage;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrUsage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tikilive/ui/dvr/DvrUsage;->mInstance:Lcom/tikilive/ui/dvr/DvrUsage;

    .line 23
    :cond_0
    sget-object p0, Lcom/tikilive/ui/dvr/DvrUsage;->mInstance:Lcom/tikilive/ui/dvr/DvrUsage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAvailable()I
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v0

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getUsed()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v0

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getUsed()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mTotal:I

    return v0
.end method

.method public getUsed()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mUsed:I

    return v0
.end method

.method public hasDvrLeft()Z
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v0

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrUsage;->getUsed()I

    move-result v2

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setTotal(I)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mContext:Landroid/content/Context;

    const-string v1, "DvrUsagePreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total"

    .line 41
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    iput p1, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mTotal:I

    return-void
.end method

.method public setUsed(I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mContext:Landroid/content/Context;

    const-string v1, "DvrUsagePreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "used"

    .line 54
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    iput p1, p0, Lcom/tikilive/ui/dvr/DvrUsage;->mUsed:I

    return-void
.end method
