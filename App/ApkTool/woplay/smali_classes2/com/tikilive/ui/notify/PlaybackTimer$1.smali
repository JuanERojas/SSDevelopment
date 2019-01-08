.class Lcom/tikilive/ui/notify/PlaybackTimer$1;
.super Ljava/util/TimerTask;
.source "PlaybackTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/notify/PlaybackTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/notify/PlaybackTimer;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/notify/PlaybackTimer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tikilive/ui/notify/PlaybackTimer$1;->this$0:Lcom/tikilive/ui/notify/PlaybackTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/tikilive/ui/notify/PlaybackTimer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback timer tick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/tikilive/ui/notify/PlaybackTimer$1;->this$0:Lcom/tikilive/ui/notify/PlaybackTimer;

    invoke-static {v0}, Lcom/tikilive/ui/notify/PlaybackTimer;->access$100(Lcom/tikilive/ui/notify/PlaybackTimer;)V

    return-void
.end method
