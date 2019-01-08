.class final Lcom/google/android/gms/internal/cast/zzbv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdm;


# instance fields
.field private final synthetic zztn:Lcom/google/android/gms/internal/cast/zzbl;

.field private final synthetic zztr:Lcom/google/android/gms/internal/cast/zzbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbu;Lcom/google/android/gms/internal/cast/zzbl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztn:Lcom/google/android/gms/internal/cast/zzbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 4

    const/4 p1, 0x0

    if-nez p4, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    new-instance p4, Lcom/google/android/gms/internal/cast/zzbw;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p3, p1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbu;->zza(Lcom/google/android/gms/internal/cast/zzbu;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p1

    invoke-direct {p4, v0, p1}, Lcom/google/android/gms/internal/cast/zzbw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/cast/zzbu;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/cast/zzbz;

    iget-object p2, p4, Lcom/google/android/gms/internal/cast/zzbz;->zzuj:Lcom/google/android/gms/internal/cast/zzby;

    if-eqz p2, :cond_1

    const-string v0, "1.0.0"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzby;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    iget-object p3, p3, Lcom/google/android/gms/internal/cast/zzbu;->zzth:Lcom/google/android/gms/internal/cast/zzbl;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/cast/zzbl;->zza(Lcom/google/android/gms/internal/cast/zzbl;Lcom/google/android/gms/internal/cast/zzby;)Lcom/google/android/gms/internal/cast/zzby;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/16 p4, 0x866

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzby;->getVersion()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    const-string v3, "1.0.0"

    aput-object v3, v2, p2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/cast/zzbu;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzbu;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzbw;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object p4, p4, Lcom/google/android/gms/internal/cast/zzbz;->zztz:Ljava/lang/String;

    invoke-direct {v1, p3, p4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbu;->zza(Lcom/google/android/gms/internal/cast/zzbu;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzbw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/cast/zzbu;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbu;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzbu;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->zztr:Lcom/google/android/gms/internal/cast/zzbu;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x837

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbu;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzbu;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
