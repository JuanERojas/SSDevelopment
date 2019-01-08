.class Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$1;
.super Ljava/lang/Object;
.source "DataCastManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 203
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onMessageSendFailed(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method
