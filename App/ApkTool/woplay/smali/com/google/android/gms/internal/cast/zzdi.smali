.class final Lcom/google/android/gms/internal/cast/zzdi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdm;


# instance fields
.field private final synthetic zzxk:Lcom/google/android/gms/internal/cast/zzdm;

.field private final synthetic zzxl:Lcom/google/android/gms/internal/cast/zzdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdh;Lcom/google/android/gms/internal/cast/zzdm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxl:Lcom/google/android/gms/internal/cast/zzdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxk:Lcom/google/android/gms/internal/cast/zzdm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxl:Lcom/google/android/gms/internal/cast/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdh;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxk:Lcom/google/android/gms/internal/cast/zzdm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxk:Lcom/google/android/gms/internal/cast/zzdm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/cast/zzdm;->zza(JILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxk:Lcom/google/android/gms/internal/cast/zzdm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzxk:Lcom/google/android/gms/internal/cast/zzdm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdm;->zzb(J)V

    :cond_0
    return-void
.end method
