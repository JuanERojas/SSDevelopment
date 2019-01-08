.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$32;
.super Ljava/lang/Object;
.source "VideoCastManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 2799
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$32;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 2

    .line 2802
    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$32;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_to_set_track_style:I

    .line 2804
    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    .line 2803
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onFailed(II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 2799
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$32;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method
