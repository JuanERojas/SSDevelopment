.class final Lcom/google/android/gms/internal/cast/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvw:Lcom/google/android/gms/internal/cast/zzcn;

.field private final synthetic zzvz:Lcom/google/android/gms/internal/cast/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcp;Lcom/google/android/gms/internal/cast/zzcn;Lcom/google/android/gms/internal/cast/zzcd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzvw:Lcom/google/android/gms/internal/cast/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzvz:Lcom/google/android/gms/internal/cast/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzvw:Lcom/google/android/gms/internal/cast/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcs;->zzvz:Lcom/google/android/gms/internal/cast/zzcd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Lcom/google/android/gms/internal/cast/zzcn;Lcom/google/android/gms/internal/cast/zzcd;)V

    return-void
.end method
