.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "VideoCastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CastListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 2627
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    .line 2635
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;I)V

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1200(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    return-void
.end method

.method public onVolumeChanged()V
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1300(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V

    return-void
.end method
