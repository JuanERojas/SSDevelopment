.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;
.super Ljava/lang/Object;
.source "VideoCastControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->showLoading(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v2, v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_authorization_timeout:I

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iput-boolean v1, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->mAuthSuccess:Z

    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    .line 212
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->getStatus()Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->PENDING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask$1;->this$1:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$MediaAuthServiceTimerTask;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->TIMED_OUT:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->abortAuthorization(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;)V

    :cond_0
    return-void
.end method
