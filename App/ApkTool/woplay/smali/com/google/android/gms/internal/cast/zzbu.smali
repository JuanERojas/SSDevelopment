.class public abstract Lcom/google/android/gms/internal/cast/zzbu;
.super Lcom/google/android/gms/internal/cast/zzbt;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzbt<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzth:Lcom/google/android/gms/internal/cast/zzbl;

.field private zztq:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbl;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzth:Lcom/google/android/gms/internal/cast/zzbl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbt;-><init>(Lcom/google/android/gms/internal/cast/zzbl;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbu;->zztq:Lcom/google/android/gms/cast/games/GameManagerClient;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzbv;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzbv;-><init>(Lcom/google/android/gms/internal/cast/zzbu;Lcom/google/android/gms/internal/cast/zzbl;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbu;->zztp:Lcom/google/android/gms/internal/cast/zzdm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzbu;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzbu;->zztq:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzbw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzbw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbu;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p1

    return-object p1
.end method
