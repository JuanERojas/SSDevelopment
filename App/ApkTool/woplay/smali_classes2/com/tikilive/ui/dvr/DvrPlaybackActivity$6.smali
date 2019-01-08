.class Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;
.super Ljava/lang/Object;
.source "DvrPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->onDvrItemAvailable()V
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

    .line 457
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 3

    .line 471
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

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

    .line 544
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackParametersChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 515
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 525
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    .line 526
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNEXPECTED ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 521
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    .line 522
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RENDERER ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 517
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    .line 518
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    :goto_3
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 530
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1100(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4

    .line 532
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    const v1, 0x7f12026c

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 533
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$700(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .line 476
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v1, p2}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1000(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$900(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$800(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1100(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1100(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {v1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1100(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 486
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1300(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->requestAudioFocus()Z

    move-result p1

    if-nez p1, :cond_2

    .line 488
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 491
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1300(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->shouldPlayOnAudioFocus()Z

    move-result p1

    if-nez p1, :cond_2

    .line 492
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1300(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/tikilive/ui/helper/AudioFocusHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    :cond_2
    :goto_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 498
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 499
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$1200(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_3
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 3

    .line 539
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

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

    .line 505
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTracksChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekProcessed()V
    .locals 2

    .line 549
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSeekProcessed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 510
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onShuffleModeEnabledChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .line 460
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onTimelineChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$900(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$6;->this$0:Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-static {p2}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$800(Lcom/tikilive/ui/dvr/DvrPlaybackActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 466
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onTracksChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
