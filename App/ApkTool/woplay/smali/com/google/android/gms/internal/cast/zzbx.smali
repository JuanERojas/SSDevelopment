.class final Lcom/google/android/gms/internal/cast/zzbx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;


# instance fields
.field private final zzge:Lcom/google/android/gms/common/api/Status;

.field private final zzts:Ljava/lang/String;

.field private final zztt:J

.field private final zztu:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbx;->zzge:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbx;->zzts:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/cast/zzbx;->zztt:J

    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzbx;->zztu:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getExtraMessageData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbx;->zztu:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbx;->zzts:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzbx;->zztt:J

    return-wide v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbx;->zzge:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
