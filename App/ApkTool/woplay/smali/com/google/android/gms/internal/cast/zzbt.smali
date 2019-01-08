.class public abstract Lcom/google/android/gms/internal/cast/zzbt;
.super Lcom/google/android/gms/internal/cast/zzcf;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/cast/zzcf<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected zztp:Lcom/google/android/gms/internal/cast/zzdm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbl;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbl;->zza(Lcom/google/android/gms/internal/cast/zzbl;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzbt;->execute()V

    return-void
.end method

.method public abstract execute()V
.end method
