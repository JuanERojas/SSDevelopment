.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->playChannelStream(Lcom/tikilive/ui/model/Channel;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

.field final synthetic val$channel:Lcom/tikilive/ui/model/Channel;

.field final synthetic val$isPreviewMode:Z

.field final synthetic val$simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/model/Channel;ZLcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/String;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$channel:Lcom/tikilive/ui/model/Channel;

    iput-boolean p3, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$isPreviewMode:Z

    iput-object p4, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iput-object p5, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 3

    const-string v0, "AdaptiveMediaSource"

    const/4 v1, 0x3

    .line 666
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdaptiveMediaSource"

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    const-string p1, "AdaptiveMediaSource"

    const/4 v0, 0x3

    .line 857
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string v0, "onPlaybackParametersChanged"

    .line 858
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 18

    move-object/from16 v0, p0

    .line 718
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$602(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Z)Z

    .line 719
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setupPlayerTimeout()Z

    move-object/from16 v1, p1

    .line 723
    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v3, :pswitch_data_0

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v1

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNEXPECTED ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 731
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RENDERER ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 733
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 734
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 725
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v1

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SOURCE ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 728
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 739
    :cond_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move-object v14, v3

    move-object v15, v4

    .line 745
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 749
    :cond_3
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->incrementVideoPlaybackErrorCounter()V

    .line 752
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$500(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 754
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->isNetworkDisconnected()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_5

    .line 758
    :cond_4
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorCounter()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_6

    .line 760
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playback error counter is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v3, v3, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorCounter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", retrying after 5 seconds with the same URL ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 763
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$900(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 765
    :cond_5
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    new-instance v2, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;

    invoke-direct {v2, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$1;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;)V

    invoke-static {v1, v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$802(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 780
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$900(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 783
    :cond_6
    iget-boolean v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$isPreviewMode:Z

    if-eqz v1, :cond_7

    .line 784
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview HLS stream playback error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$500(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_5

    .line 788
    :cond_7
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const-string v3, "DictionaryPreferences"

    invoke-virtual {v1, v3, v2}, Lcom/tikilive/ui/channel/ChannelActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "channel_playback_error"

    .line 789
    iget-object v4, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    const v5, 0x7f120096

    invoke-virtual {v4, v5}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    iget-object v3, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v3, v3, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 792
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorDelay()I

    move-result v1

    if-nez v1, :cond_8

    .line 793
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Lcom/tikilive/ui/channel/ChannelActivity;->setVideoPlaybackErrorDelay(I)V

    goto :goto_4

    .line 795
    :cond_8
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->incrementVideoPlaybackErrorDelay()V

    .line 798
    :goto_4
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playback error counter is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v4, v4, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorCounter()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", retrying after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v4, v4, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorDelay()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds, reloading channel details from server ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 801
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$900(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v3}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 804
    :cond_9
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    new-instance v3, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;

    invoke-direct {v3, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;)V

    invoke-static {v1, v3}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$802(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 815
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$900(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v3}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$800(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v4, v4, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    const-string v3, "ApiPreferences"

    invoke-virtual {v1, v3, v2}, Lcom/tikilive/ui/channel/ChannelActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "username"

    const-string v3, "<guest>"

    .line 818
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 820
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v6

    .line 821
    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 823
    invoke-static {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 824
    invoke-static {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$url:Ljava/lang/String;

    const-string v11, "channel"

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$channel:Lcom/tikilive/ui/model/Channel;

    .line 827
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result v12

    iget-object v1, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 828
    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getVideoPlaybackErrorCounter()I

    move-result v13

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$3;

    invoke-direct {v1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$3;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;)V

    new-instance v2, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$4;

    invoke-direct {v2, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$4;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 821
    invoke-virtual/range {v6 .. v17}, Lcom/tikilive/ui/backend/Api;->reportPlaybackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_5
    return-void

    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    const-string p1, "AdaptiveMediaSource"

    const/4 v0, 0x3

    .line 673
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {v2, p2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$400(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x2

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$500(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    if-ne p2, v0, :cond_4

    .line 680
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->setVideoPlaybackErrorCounter(I)V

    .line 681
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->setVideoPlaybackErrorDelay(I)V

    .line 682
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$500(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$isPreviewMode:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$600(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 684
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$602(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Z)Z

    .line 685
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->setupPlayerTimeout()Z

    .line 687
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 688
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 689
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$700(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->requestAudioFocus()Z

    move-result p1

    if-nez p1, :cond_4

    .line 690
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$simpleExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 693
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$700(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->shouldPlayOnAudioFocus()Z

    move-result p1

    if-nez p1, :cond_4

    .line 694
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$700(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 3

    const-string v0, "AdaptiveMediaSource"

    const/4 v1, 0x3

    .line 850
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdaptiveMediaSource"

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionDiscontinuity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    const-string p1, "AdaptiveMediaSource"

    const/4 v0, 0x3

    .line 703
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string v0, "onRepeatModeChanged"

    .line 704
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSeekProcessed()V
    .locals 2

    const-string v0, "AdaptiveMediaSource"

    const/4 v1, 0x3

    .line 864
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdaptiveMediaSource"

    const-string v1, "onSeekProcessed"

    .line 865
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    const-string p1, "AdaptiveMediaSource"

    const/4 v0, 0x3

    .line 710
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string v0, "onShuffleModeEnabledChanged"

    .line 711
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    const-string p1, "AdaptiveMediaSource"

    const/4 p2, 0x3

    .line 641
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string p2, "onTimelineChanged"

    .line 642
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    const-string p1, "AdaptiveMediaSource"

    const/4 p2, 0x3

    .line 648
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdaptiveMediaSource"

    const-string p2, "onTracksChanged"

    .line 649
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {p1}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getTextTracksHelper()Lcom/tikilive/ui/helper/TextTracksHelper;

    move-result-object p1

    .line 652
    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->disableTextTracks()V

    .line 653
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$channel:Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->val$isPreviewMode:Z

    if-nez p2, :cond_2

    .line 654
    invoke-virtual {p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->hasTextTracks()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 655
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$300(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 656
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->getId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/tikilive/ui/helper/TextTracksHelper;->autoEnableTextTrack(Landroid/content/Context;I)V

    .line 660
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->updateSubtitleButton()V

    :cond_2
    return-void
.end method
