.class final Lcom/google/android/gms/internal/cast/zzbp;
.super Lcom/google/android/gms/internal/cast/zzbr;


# instance fields
.field private final synthetic zzth:Lcom/google/android/gms/internal/cast/zzbl;

.field private final synthetic zztk:Ljava/lang/String;

.field private final synthetic zztl:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbl;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbp;->zzth:Lcom/google/android/gms/internal/cast/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbp;->zztk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbp;->zztl:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbr;-><init>(Lcom/google/android/gms/internal/cast/zzbl;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbp;->zzth:Lcom/google/android/gms/internal/cast/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbp;->zztk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbp;->zztl:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbt;->zztp:Lcom/google/android/gms/internal/cast/zzdm;

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/cast/zzbl;->zza(Lcom/google/android/gms/internal/cast/zzbl;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/cast/zzdm;)V

    return-void
.end method
