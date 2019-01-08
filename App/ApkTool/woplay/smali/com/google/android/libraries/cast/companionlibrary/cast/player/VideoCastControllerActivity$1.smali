.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;
.super Ljava/lang/Object;
.source "VideoCastControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->loadAndSetupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;->onPlayPauseClicked(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to toggle playback due to other issues"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_perform_action:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 191
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to toggle playback due to network issues"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 187
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to toggle playback due to temporary network issue"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_trans:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
