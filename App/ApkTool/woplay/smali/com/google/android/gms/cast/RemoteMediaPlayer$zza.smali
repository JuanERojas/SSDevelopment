.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzfz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfa:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfz:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iget-object p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez p5, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No GoogleApiClient available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object p5, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfy:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p5, v0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/cast/zzbm;

    invoke-direct {p2, p0, p3, p4}, Lcom/google/android/gms/cast/zzbm;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;J)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public final zzl()J
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfz:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzfz:J

    return-wide v4
.end method