.class Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$4;
.super Ljava/lang/Object;
.source "BaseCastManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->stopApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$4;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 1067
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$4;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1071
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopApplication -> onResult: stopping application failed"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$4;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onApplicationStopFailed(I)V

    goto :goto_0

    .line 1076
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stopApplication -> onResult Stopped application successfully"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
