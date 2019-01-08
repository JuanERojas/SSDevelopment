.class Lcom/tikilive/ui/dvr/DvrPlaybackActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DvrPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/dvr/DvrPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$1;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->pause()V

    :cond_0
    return-void
.end method
