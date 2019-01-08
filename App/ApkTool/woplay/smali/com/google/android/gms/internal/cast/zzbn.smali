.class final Lcom/google/android/gms/internal/cast/zzbn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private final synthetic zzti:Lcom/google/android/gms/internal/cast/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzti:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzti:Lcom/google/android/gms/internal/cast/zzbm;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbm;->zzth:Lcom/google/android/gms/internal/cast/zzbl;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zzcm;->zzn(Ljava/lang/String;)V

    return-void
.end method
