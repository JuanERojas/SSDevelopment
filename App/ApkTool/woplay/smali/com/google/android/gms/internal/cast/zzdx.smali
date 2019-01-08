.class public final Lcom/google/android/gms/internal/cast/zzdx;
.super Lcom/google/android/gms/internal/cast/zzdu;


# instance fields
.field private final synthetic zzxx:Lcom/google/android/gms/internal/cast/zzdv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/cast/zzdv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdx;->zzxx:Lcom/google/android/gms/internal/cast/zzdv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdq;->zzdd()Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdx;->zzxx:Lcom/google/android/gms/internal/cast/zzdv;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdv;->zzxu:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdq;->zza(Lcom/google/android/gms/internal/cast/zzdq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdx;->zzxx:Lcom/google/android/gms/internal/cast/zzdv;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzdy;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzdy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzdv;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final onError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdq;->zzdd()Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdx;->zzxx:Lcom/google/android/gms/internal/cast/zzdv;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdv;->zzxu:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdq;->zza(Lcom/google/android/gms/internal/cast/zzdq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdx;->zzxx:Lcom/google/android/gms/internal/cast/zzdv;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdy;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzdv;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
