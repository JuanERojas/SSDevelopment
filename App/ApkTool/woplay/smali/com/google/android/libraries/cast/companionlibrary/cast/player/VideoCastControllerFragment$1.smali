.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;
.super Ljava/lang/Object;
.source "VideoCastControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->handleMediaAuthTask(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

.field final synthetic val$authService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;->val$authService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;->val$authService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->setMediaAuthListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthListener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;->val$authService:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthService;->startAuthorization()V

    return-void
.end method
