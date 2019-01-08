.class final Lcom/google/android/gms/internal/cast/zzdr;
.super Lcom/google/android/gms/internal/cast/zzeh;


# instance fields
.field private final synthetic zzxu:Lcom/google/android/gms/internal/cast/zzdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdr;->zzxu:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzeh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdq;->zzdd()Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object p1

    const-string v0, "onRemoteDisplayEnded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdr;->zzxu:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdq;->zza(Lcom/google/android/gms/internal/cast/zzdq;)V

    return-void
.end method
