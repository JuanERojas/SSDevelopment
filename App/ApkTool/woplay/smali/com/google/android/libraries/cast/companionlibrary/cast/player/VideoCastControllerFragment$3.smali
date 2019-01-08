.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;
.super Ljava/lang/Object;
.source "VideoCastControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->onAuthResult(Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;Lcom/google/android/gms/cast/MediaInfo;Ljava/lang/String;ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

.field final synthetic val$customData:Lorg/json/JSONObject;

.field final synthetic val$info:Lcom/google/android/gms/cast/MediaInfo;

.field final synthetic val$startPoint:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/MediaInfo;ILorg/json/JSONObject;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->val$info:Lcom/google/android/gms/cast/MediaInfo;

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->val$startPoint:I

    iput-object p4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->val$customData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->PLAYBACK:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$2102(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    .line 770
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->val$info:Lcom/google/android/gms/cast/MediaInfo;

    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->val$startPoint:I

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->val$customData:Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$2200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/MediaInfo;ZILorg/json/JSONObject;)V

    return-void
.end method
