.class public final Lcom/google/android/gms/flags/Singletons;
.super Ljava/lang/Object;


# static fields
.field private static zzach:Lcom/google/android/gms/flags/Singletons;


# instance fields
.field private final zzaci:Lcom/google/android/gms/flags/FlagRegistry;

.field private final zzacj:Lcom/google/android/gms/flags/FlagValueProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/flags/Singletons;

    invoke-direct {v0}, Lcom/google/android/gms/flags/Singletons;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/flags/Singletons;->setInstance(Lcom/google/android/gms/flags/Singletons;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/flags/FlagRegistry;

    invoke-direct {v0}, Lcom/google/android/gms/flags/FlagRegistry;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/Singletons;->zzaci:Lcom/google/android/gms/flags/FlagRegistry;

    new-instance v0, Lcom/google/android/gms/flags/FlagValueProvider;

    invoke-direct {v0}, Lcom/google/android/gms/flags/FlagValueProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/Singletons;->zzacj:Lcom/google/android/gms/flags/FlagValueProvider;

    return-void
.end method

.method public static flagRegistry()Lcom/google/android/gms/flags/FlagRegistry;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/flags/Singletons;->zzdm()Lcom/google/android/gms/flags/Singletons;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/flags/Singletons;->zzaci:Lcom/google/android/gms/flags/FlagRegistry;

    return-object v0
.end method

.method public static flagValueProvider()Lcom/google/android/gms/flags/FlagValueProvider;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/flags/Singletons;->zzdm()Lcom/google/android/gms/flags/Singletons;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/flags/Singletons;->zzacj:Lcom/google/android/gms/flags/FlagValueProvider;

    return-object v0
.end method

.method protected static setInstance(Lcom/google/android/gms/flags/Singletons;)V
    .locals 1

    const-class v0, Lcom/google/android/gms/flags/Singletons;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/gms/flags/Singletons;->zzach:Lcom/google/android/gms/flags/Singletons;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzdm()Lcom/google/android/gms/flags/Singletons;
    .locals 2

    const-class v0, Lcom/google/android/gms/flags/Singletons;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/flags/Singletons;->zzach:Lcom/google/android/gms/flags/Singletons;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
