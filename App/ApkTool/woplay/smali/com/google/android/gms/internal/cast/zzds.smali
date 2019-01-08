.class final Lcom/google/android/gms/internal/cast/zzds;
.super Lcom/google/android/gms/internal/cast/zzdv;


# instance fields
.field private final synthetic zzxu:Lcom/google/android/gms/internal/cast/zzdq;

.field private final synthetic zzxv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdq;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzds;->zzxu:Lcom/google/android/gms/internal/cast/zzdq;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzds;->zzxv:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdv;-><init>(Lcom/google/android/gms/internal/cast/zzdq;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/cast/zzea;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdv;->zza(Lcom/google/android/gms/internal/cast/zzea;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzea;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzdw;-><init>(Lcom/google/android/gms/internal/cast/zzdv;Lcom/google/android/gms/internal/cast/zzea;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzds;->zzxu:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdq;->zzb(Lcom/google/android/gms/internal/cast/zzdq;)Lcom/google/android/gms/internal/cast/zzeg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzds;->zzxv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzea;->zza(Lcom/google/android/gms/internal/cast/zzec;Lcom/google/android/gms/internal/cast/zzeg;Ljava/lang/String;)V

    return-void
.end method
