.class public final Lcom/google/android/gms/internal/cast/zzdh;
.super Lcom/google/android/gms/internal/cast/zzcg;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private zzwp:J

.field private zzwq:Lcom/google/android/gms/cast/MediaStatus;

.field private zzwr:Lcom/google/android/gms/internal/cast/zzdj;

.field private final zzws:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzwt:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzwu:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzwv:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzww:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzwx:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzwy:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzwz:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxa:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxb:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxc:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxd:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxe:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxf:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxg:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxh:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxi:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxj:Lcom/google/android/gms/internal/cast/zzdn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcu;->zzp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdh;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    sget-object p1, Lcom/google/android/gms/internal/cast/zzdh;->NAMESPACE:Ljava/lang/String;

    const-string v0, "MediaControlChannel"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    const-wide/32 v0, 0x5265c00

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwt:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwu:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwv:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    const-wide/16 v2, 0x2710

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzww:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwx:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwy:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwz:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxa:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxb:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxc:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxd:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxe:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxf:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxg:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxi:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxh:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxj:Lcom/google/android/gms/internal/cast/zzdn;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwt:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwv:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzww:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwy:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwz:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxa:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxb:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxc:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxd:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxe:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxf:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxg:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxi:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxi:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxj:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzcz()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final zza(DJJ)J
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    move-wide v4, v0

    :cond_0
    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    return-wide p3

    :cond_1
    long-to-double v2, v4

    mul-double v2, v2, p1

    double-to-long p1, v2

    add-long v2, p3, p1

    cmp-long p1, p5, v0

    if-lez p1, :cond_2

    cmp-long p1, v2, p5

    if-lez p1, :cond_2

    return-wide p5

    :cond_2
    cmp-long p1, v2, v0

    if-gez p1, :cond_3

    move-wide p5, v0

    return-wide p5

    :cond_3
    move-wide p5, v2

    return-wide p5
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzdm;Z)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwz:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :cond_0
    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string p2, "GET_STATUS"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_1

    const-string p1, "mediaSessionId"

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method private static zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbp;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string p3, "PRECACHE"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p2, "precacheData"

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/zzbp;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/zzbp;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "requestItems"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzdh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzda()V

    return-void
.end method

.method private static zzb(Lorg/json/JSONArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzcz()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzcn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdn;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzq(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzda()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdm;Z)J

    return-void
.end method

.method private final zzj()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzdk;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final getApproximateAdBreakClipPositionMs()J
    .locals 13

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-wide v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_3
    move-wide v7, v4

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakClipTimeInMs()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getDurationInMs()J

    move-result-wide v11

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/cast/zzdh;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    return-wide v2
.end method

.method public final getApproximateStreamPosition()J
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdh;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return-wide v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    return-wide v5

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/cast/zzdh;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    return-wide v5
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdh;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SKIP_AD"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzuv:Lcom/google/android/gms/internal/cast/zzdg;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Error creating SkipAd message: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;DLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    invoke-virtual {p1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;III)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-nez p3, :cond_4

    if-gtz p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxi:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEM_RANGE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "itemId"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-lez p3, :cond_2

    const-string p1, "nextCount"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-lez p4, :cond_3

    const-string p1, "prevCount"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of nextCount and prevCount must be positive and the other must be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-gez v4, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxd:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_UPDATE"

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v5

    invoke-virtual {v2, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p1, "currentItemId"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    const-string p1, "jump"

    invoke-virtual {v2, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p5, :cond_4

    array-length p1, p5

    if-lez p1, :cond_4

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length p6, p5

    if-ge p2, p6, :cond_3

    aget-object p6, p5, p2

    invoke-virtual {p6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "items"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    :goto_1
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_1
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_SINGLE"

    goto :goto_1

    :pswitch_2
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL"

    goto :goto_1

    :pswitch_3
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_OFF"

    goto :goto_1

    :cond_5
    :goto_2
    cmp-long p1, p3, v0

    if-eqz p1, :cond_6

    const-string p1, "currentTime"

    long-to-double p2, p3

    const-wide p4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, p4

    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    if-eqz p8, :cond_7

    const-string p1, "customData"

    invoke-virtual {v2, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;JILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzww:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/cast/zzdi;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/cast/zzdi;-><init>(Lcom/google/android/gms/internal/cast/zzdh;Lcom/google/android/gms/internal/cast/zzdm;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SEEK"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    long-to-double p2, p2

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v3

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    const-string p1, "resumeState"

    const-string p2, "PLAYBACK_START"

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const-string p1, "resumeState"

    const-string p2, "PLAYBACK_PAUSE"

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaLoadOptions;)J
    .locals 7
    .param p1    # Lcom/google/android/gms/internal/cast/zzdm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/cast/MediaInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/cast/MediaLoadOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "LOAD"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "autoplay"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getAutoplay()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlayPosition()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlaybackRate()D

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "credentials"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "credentialsType"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getActiveTrackIds()[J

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-wide v4, p1, v3

    invoke-virtual {p2, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "activeTrackIds"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "customData"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxb:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwt:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PAUSE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;ZLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwy:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "muted"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxh:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEMS"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p2, v4

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[IILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxf:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REORDER"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    const-string p1, "insertBefore"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[ILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxe:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REMOVE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToRemove must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxa:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-wide v4, p2, v3

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    if-eqz v1, :cond_9

    array-length v7, v1

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    if-ltz v3, :cond_1

    array-length v9, v1

    if-lt v3, v9, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-wide/16 v9, -0x1

    cmp-long v11, v4, v9

    if-eqz v11, :cond_3

    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    if-gez v13, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/gms/internal/cast/zzdh;->zzxc:Lcom/google/android/gms/internal/cast/zzdn;

    move-object/from16 v15, p1

    invoke-virtual {v14, v12, v13, v15}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string v14, "requestId"

    invoke-virtual {v11, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "type"

    const-string v15, "QUEUE_INSERT"

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "mediaSessionId"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v9

    invoke-virtual {v11, v14, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    array-length v10, v1

    if-ge v7, v10, :cond_4

    aget-object v10, v1, v7

    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "items"

    invoke-virtual {v11, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v1, "insertBefore"

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eq v3, v8, :cond_6

    const-string v1, "currentItemIndex"

    invoke-virtual {v11, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    const-wide/16 v1, -0x1

    cmp-long v3, v4, v1

    if-eqz v3, :cond_7

    const-string v1, "currentTime"

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "customData"

    invoke-virtual {v11, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v12

    :cond_9
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "itemsToInsert must not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_7

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-ltz p3, :cond_6

    array-length v0, p2

    if-lt p3, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-gez v4, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x36

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition can not be negative: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_LOAD"

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_3

    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "items"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p4, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_3

    :pswitch_0
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    :goto_1
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_1
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_SINGLE"

    goto :goto_1

    :pswitch_2
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL"

    goto :goto_1

    :pswitch_3
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_OFF"

    goto :goto_1

    :goto_2
    const-string p1, "startIndex"

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long p1, p5, v0

    if-eqz p1, :cond_4

    const-string p1, "currentTime"

    long-to-double p2, p5

    const-wide p4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, p4

    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    const-string p1, "customData"

    invoke-virtual {v2, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :goto_3
    const/16 p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid repeat mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :cond_6
    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1f

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(JI)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzcn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdn;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdm;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdm;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdm;DLorg/json/JSONObject;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/cast/zzdk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzdk;-><init>()V

    throw p1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxj:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_PLAYBACK_RATE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdm;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwv:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "STOP"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbp;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdm;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxg:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEM_IDS"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdm;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzco()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PLAY"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzcm()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzcm()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzcz()V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzuv:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "message received: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x4

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "QUEUE_ITEM_IDS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "MEDIA_STATUS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "INVALID_PLAYER_STATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "QUEUE_CHANGE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v7, "LOAD_FAILED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "INVALID_REQUEST"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v7, "QUEUE_ITEMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "LOAD_CANCELLED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const/16 v7, 0x834

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxh:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v3, :cond_18

    const-string v3, "items"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/cast/zzdj;->zzb([Lcom/google/android/gms/cast/MediaQueueItem;)V

    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxi:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v3, :cond_3

    const-string v3, "changeType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "itemIds"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzdh;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v5

    const-string v6, "insertBefore"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_3

    :sswitch_8
    const-string v6, "NO_CHANGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x4

    goto :goto_4

    :sswitch_9
    const-string v6, "ITEMS_CHANGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    goto :goto_4

    :sswitch_a
    const-string v6, "UPDATE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    :sswitch_b
    const-string v6, "REMOVE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x2

    goto :goto_4

    :sswitch_c
    const-string v6, "INSERT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v8, -0x1

    :goto_4
    packed-switch v8, :pswitch_data_1

    return-void

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/cast/zzdj;->zza([I)V

    return-void

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/cast/zzdj;->zzc([I)V

    return-void

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/cast/zzdj;->zzb([I)V

    return-void

    :pswitch_5
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v3, v5, v1}, Lcom/google/android/gms/internal/cast/zzdj;->zza([II)V

    :cond_3
    return-void

    :pswitch_6
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxg:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v3, :cond_4

    const-string v3, "itemIds"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdh;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/cast/zzdj;->zza([I)V

    :cond_4
    return-void

    :pswitch_7
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzuv:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v8, "received unexpected error: Invalid Request."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzcn()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_5

    :cond_5
    return-void

    :pswitch_8
    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    const/16 v7, 0x835

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    return-void

    :pswitch_9
    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzuv:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v8, "received unexpected error: Invalid Player State."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzcn()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_6

    :cond_6
    return-void

    :pswitch_b
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_17

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzws:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v3

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzww:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdn;->zzdb()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzww:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzdn;->zzdb()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwy:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzdn;->zzdb()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwy:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    if-eqz v7, :cond_b

    const/4 v7, 0x2

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    if-eqz v8, :cond_c

    or-int/lit8 v7, v7, 0x1

    :cond_c
    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v3, :cond_d

    goto :goto_a

    :cond_d
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v1

    goto :goto_b

    :cond_e
    :goto_a
    new-instance v3, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    const/16 v1, 0x7f

    :goto_b
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    :cond_f
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    :cond_10
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onMetadataUpdated()V

    :cond_11
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onQueueStatusUpdated()V

    :cond_12
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_13

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onPreloadStatusUpdated()V

    :cond_13
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwr:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/cast/zzdj;->onAdBreakStatusUpdated()V

    :cond_14
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwp:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzcn()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_c

    :cond_16
    return-void

    :cond_17
    iput-object v11, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwq:Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onMetadataUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onQueueStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onPreloadStatusUpdated()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzwz:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v1, v5, v6, v4, v11}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_18
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzuv:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v5, "Message is malformed (%s); ignoring: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p1, v0, v2

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_7
        -0x6ab4c52e -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0xfa7664a -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
        0x5330afee -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
