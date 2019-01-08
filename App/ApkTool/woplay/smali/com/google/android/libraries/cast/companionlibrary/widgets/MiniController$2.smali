.class Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;
.super Ljava/lang/Object;
.source "MiniController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$200(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Z)V

    const/4 v0, -0x1

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;->onPlayPauseClicked(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/CastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    move-result-object p1

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection:I

    .line 224
    invoke-interface {p1, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;->onFailed(II)V

    goto :goto_0

    .line 220
    :catch_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    move-result-object p1

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_trans:I

    invoke-interface {p1, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;->onFailed(II)V

    goto :goto_0

    .line 217
    :catch_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    move-result-object p1

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_perform_action:I

    invoke-interface {p1, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;->onFailed(II)V

    :cond_0
    :goto_0
    return-void
.end method
