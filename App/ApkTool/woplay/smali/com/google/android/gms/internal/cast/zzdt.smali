.class final Lcom/google/android/gms/internal/cast/zzdt;
.super Lcom/google/android/gms/internal/cast/zzdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzdx;-><init>(Lcom/google/android/gms/internal/cast/zzdv;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzea;->zza(Lcom/google/android/gms/internal/cast/zzec;)V

    return-void
.end method
