.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$24;
.super Ljava/lang/Object;
.source "VideoCastManager.java"

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->attachMediaChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 1829
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$24;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataUpdated()V
    .locals 2

    .line 1832
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteMediaPlayer::onMetadataUpdated() is reached"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$24;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onRemoteMediaPlayerMetadataUpdated()V

    return-void
.end method
