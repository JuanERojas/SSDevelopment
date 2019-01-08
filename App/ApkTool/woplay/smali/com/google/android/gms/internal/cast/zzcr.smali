.class final Lcom/google/android/gms/internal/cast/zzcr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvw:Lcom/google/android/gms/internal/cast/zzcn;

.field private final synthetic zzvy:Lcom/google/android/gms/internal/cast/zzcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcp;Lcom/google/android/gms/internal/cast/zzcn;Lcom/google/android/gms/internal/cast/zzcv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzvw:Lcom/google/android/gms/internal/cast/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzvy:Lcom/google/android/gms/internal/cast/zzcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzvw:Lcom/google/android/gms/internal/cast/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcr;->zzvy:Lcom/google/android/gms/internal/cast/zzcv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzcn;->zza(Lcom/google/android/gms/internal/cast/zzcn;Lcom/google/android/gms/internal/cast/zzcv;)V

    return-void
.end method
