.class final synthetic Lcom/google/android/gms/internal/cast/zzdo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzxp:Lcom/google/android/gms/internal/cast/zzdn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzxp:Lcom/google/android/gms/internal/cast/zzdn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdo;->zzxp:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzdn;->zzdc()V

    return-void
.end method
