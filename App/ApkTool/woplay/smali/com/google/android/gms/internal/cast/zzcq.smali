.class final Lcom/google/android/gms/internal/cast/zzcq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvw:Lcom/google/android/gms/internal/cast/zzcn;

.field private final synthetic zzvx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcp;Lcom/google/android/gms/internal/cast/zzcn;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcq;->zzvw:Lcom/google/android/gms/internal/cast/zzcn;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzcq;->zzvx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcq;->zzvw:Lcom/google/android/gms/internal/cast/zzcn;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcn;->zze(Lcom/google/android/gms/internal/cast/zzcn;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcq;->zzvx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
