.class final Lcom/google/android/gms/cast/zzr;
.super Lcom/google/android/gms/cast/CastRemoteDisplayClient$zza;


# instance fields
.field private final synthetic zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final synthetic zzbk:Lcom/google/android/gms/internal/cast/zzdz;

.field private final synthetic zzbl:Lcom/google/android/gms/cast/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzq;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/cast/zzdz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzr;->zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzr;->zzbk:Lcom/google/android/gms/internal/cast/zzdz;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient$zza;-><init>(Lcom/google/android/gms/cast/zzp;)V

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final zza(IILandroid/view/Surface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v1, "onConnected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object p1

    const-string p2, "Unable to get the display manager"

    :goto_0
    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lcom/google/android/gms/cast/zzr;->zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v1, v1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v1, v1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;II)I

    move-result v7

    iget-object v1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v1, v1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    const-string v4, "private_display"

    const/4 v9, 0x2

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object p1

    const-string p2, "Unable to create virtual display"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object p1

    const-string p2, "Virtual display does not have a display"

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/cast/zzr;->zzbk:Lcom/google/android/gms/internal/cast/zzdz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzdz;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzee;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzee;->zza(Lcom/google/android/gms/internal/cast/zzec;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object p1

    const-string p2, "Unable to provision the route\'s new virtual Display"

    goto :goto_0
.end method

.method public final zzc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v1, "onConnectedWithDisplay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v3, "There is no virtual display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzr;->zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzr;->zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzr;->zzbl:Lcom/google/android/gms/cast/zzq;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const-string v3, "Virtual display no longer has a display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzr;->zzbj:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
