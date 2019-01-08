.class public abstract Lcom/google/android/gms/internal/cast/zzbr;
.super Lcom/google/android/gms/internal/cast/zzbt;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzbt<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzth:Lcom/google/android/gms/internal/cast/zzbl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzth:Lcom/google/android/gms/internal/cast/zzbl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbt;-><init>(Lcom/google/android/gms/internal/cast/zzbl;)V

    new-instance v0, Lcom/google/android/gms/internal/cast/zzbs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzbs;-><init>(Lcom/google/android/gms/internal/cast/zzbr;Lcom/google/android/gms/internal/cast/zzbl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zztp:Lcom/google/android/gms/internal/cast/zzdm;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/cast/zzbx;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v6
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbr;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p1

    return-object p1
.end method
