.class public Lcom/google/android/gms/gcm/GcmNetworkManager;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_RESCHEDULE:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static zzg:Lcom/google/android/gms/gcm/GcmNetworkManager;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "GcmNetworkManager.class"
    .end annotation
.end field


# instance fields
.field private final zzh:Landroid/content/Context;

.field private final zzi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;
    .locals 2

    const-class v0, Lcom/google/android/gms/gcm/GcmNetworkManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzg:Lcom/google/android/gms/gcm/GcmNetworkManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzg:Lcom/google/android/gms/gcm/GcmNetworkManager;

    :cond_0
    sget-object p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzg:Lcom/google/android/gms/gcm/GcmNetworkManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final zzd()Lcom/google/android/gms/gcm/zzn;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzf(Landroid/content/Context;)I

    move-result v0

    const v1, 0x4c4b40

    if-ge v0, v1, :cond_0

    const-string v0, "GcmNetworkManager"

    const-string v1, "Google Play services is not available, dropping all GcmNetworkManager requests"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/gcm/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/zzo;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/gcm/zzm;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/zzm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static zzd(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide a valid tag."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag is larger than max permissible tag length (100)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private final zze(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "GcmTaskService must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v0, "GcmNetworkManager"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " is not available. This may cause the task to be lost."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v1, :cond_3

    return v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x76

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The GcmTaskService class you provided "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelAllTasks(Ljava/lang/Class;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zze(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzd()Lcom/google/android/gms/gcm/zzn;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/gcm/zzn;->zzd(Landroid/content/ComponentName;)Z

    return-void
.end method

.method public cancelTask(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzh:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzd(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zze(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzd()Lcom/google/android/gms/gcm/zzn;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/gcm/zzn;->zzd(Landroid/content/ComponentName;Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized schedule(Lcom/google/android/gms/gcm/Task;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/Task;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zze(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzd()Lcom/google/android/gms/gcm/zzn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/gcm/zzn;->zzd(Lcom/google/android/gms/gcm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/Task;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/Task;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/Task;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zze(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzf(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzi:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
