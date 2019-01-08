.class Lcom/tikilive/ui/video/VideoPlaybackActivity$9;
.super Ljava/lang/Object;
.source "VideoPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->onVideoAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

.field final synthetic val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 3

    .line 711
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 877
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackParametersChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 760
    iget v2, v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v2, :pswitch_data_0

    .line 775
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v1

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNEXPECTED ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 768
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v1

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RENDERER ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 762
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v1

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOURCE ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 765
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 776
    :cond_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move-object v13, v2

    move-object v14, v3

    .line 782
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1208(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    .line 785
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 787
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_5

    .line 791
    :cond_3
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_5

    .line 793
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playback error counter is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", retrying after 5 seconds with the same URL ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 796
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    :cond_4
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    new-instance v2, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;

    invoke-direct {v2, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$1;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9;)V

    invoke-static {v1, v2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2502(Lcom/tikilive/ui/video/VideoPlaybackActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 809
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 813
    :cond_5
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const-string v3, "DictionaryPreferences"

    invoke-virtual {v1, v3, v2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "video_playback_error"

    .line 814
    iget-object v4, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const v5, 0x7f120274

    invoke-virtual {v4, v5}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    iget-object v3, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 817
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v1

    if-nez v1, :cond_6

    .line 818
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const/16 v3, 0x2710

    invoke-static {v1, v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    goto :goto_4

    .line 820
    :cond_6
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    iget-object v3, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-static {v1, v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    .line 823
    :goto_4
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playback error counter is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v4}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", retrying after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v4}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds, reloading video details from server ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 826
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 828
    :cond_7
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    new-instance v3, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;

    invoke-direct {v3, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$2;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9;)V

    invoke-static {v1, v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2502(Lcom/tikilive/ui/video/VideoPlaybackActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 839
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2600(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v3}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2500(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v4}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const-string v3, "ApiPreferences"

    invoke-virtual {v1, v3, v2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "username"

    const-string v3, "<guest>"

    .line 842
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 844
    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/backend/Api;

    move-result-object v5

    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 846
    invoke-static {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 847
    invoke-static {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 848
    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getUrl()Ljava/lang/String;

    move-result-object v9

    const-string v10, "video"

    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 850
    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Video;->getId()I

    move-result v11

    iget-object v1, v0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    .line 851
    invoke-static {v1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1200(Lcom/tikilive/ui/video/VideoPlaybackActivity;)I

    move-result v12

    new-instance v15, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$3;

    invoke-direct {v15, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$3;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9;)V

    new-instance v1, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$4;

    invoke-direct {v1, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$9$4;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$9;)V

    move-object/from16 v16, v1

    .line 844
    invoke-virtual/range {v5 .. v16}, Lcom/tikilive/ui/backend/Api;->reportPlaybackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .line 716
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v1, p2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2000(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1900(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    .line 723
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    .line 724
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->requestAudioFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->shouldPlayOnAudioFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2400(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    :cond_2
    :goto_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 738
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    .line 739
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p2, p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2202(Lcom/tikilive/ui/video/VideoPlaybackActivity;I)I

    .line 740
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 741
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$2300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_3
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 3

    .line 872
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionDiscontinuity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 747
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRepeatModeChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekProcessed()V
    .locals 2

    .line 882
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSeekProcessed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 752
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onShuffleModeEnabledChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .line 699
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onTimelineChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1900(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1800(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 705
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onTracksChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$9;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$300(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V

    return-void
.end method
