.class final Lcom/google/android/gms/cast/zzh;
.super Lcom/google/android/gms/cast/Cast$zza;


# instance fields
.field private final synthetic zzaf:Ljava/lang/String;

.field private final synthetic zzag:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/zzh;->zzaf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzh;->zzag:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/Cast$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/cast/zzcn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$zza;->zza(Lcom/google/android/gms/internal/cast/zzcn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzcn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzh;->zzaf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzh;->zzag:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x7d1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcf;->zzk(I)V

    return-void
.end method
