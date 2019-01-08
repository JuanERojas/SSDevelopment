.class final Lcom/google/android/gms/cast/zzs;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/cast/zzdz;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzs;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/cast/zzdz;

    new-instance v0, Lcom/google/android/gms/cast/zzt;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/zzt;-><init>(Lcom/google/android/gms/cast/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzee;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/cast/zzee;->zza(Lcom/google/android/gms/internal/cast/zzec;)V

    return-void
.end method
