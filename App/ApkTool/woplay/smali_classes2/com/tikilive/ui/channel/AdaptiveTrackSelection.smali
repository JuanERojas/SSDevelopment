.class public Lcom/tikilive/ui/channel/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field public static final DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x7d0L


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private final minTimeBetweenBufferReevaluationMs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 16

    .line 184
    sget-object v15, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const v4, 0xc3500

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f400000    # 0.75f

    const-wide/16 v13, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v15}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 240
    iput-object p3, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 241
    iput p4, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->maxInitialBitrate:I

    const-wide/16 p1, 0x3e8

    mul-long p5, p5, p1

    .line 242
    iput-wide p5, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long p7, p7, p1

    .line 243
    iput-wide p7, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long p9, p9, p1

    .line 244
    iput-wide p9, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 245
    iput p11, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 246
    iput p12, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 248
    iput-wide p13, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    .line 249
    iput-object p15, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 250
    iput p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->playbackSpeed:F

    const-wide/high16 p1, -0x8000000000000000L

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    const/4 p1, 0x1

    .line 252
    iput p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->reason:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 253
    iput-wide p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 8

    .line 376
    iget-object v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 377
    iget v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->maxInitialBitrate:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    iget v1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 380
    :goto_1
    iget v4, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->length:I

    if-ge v2, v4, :cond_6

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    const/4 v4, 0x3

    if-eqz v6, :cond_2

    .line 381
    invoke-virtual {p0, v2, p1, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    const-string v5, "HLS-Adaptive-Streaming"

    .line 391
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    invoke-virtual {p0, v2, p1, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 393
    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    const-string v5, "HLS-Adaptive-Streaming"

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineIdealSelectedIndex: format = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is blacklisted, skipping"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 382
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 383
    iget v5, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-float v5, v5

    iget v6, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->playbackSpeed:F

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_4

    const-string p1, "HLS-Adaptive-Streaming"

    .line 384
    invoke-static {p1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "HLS-Adaptive-Streaming"

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "determineIdealSelectedIndex: effectiveBitrate = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ideal format bitrate = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->playbackSpeed:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    move v3, v2

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    return v3
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 402
    iget-wide v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 404
    iget p2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1

    :cond_1
    iget-wide p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    :goto_1
    return-wide p1
.end method


# virtual methods
.method public enable()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 258
    iput-wide v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 330
    iget-wide v2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    sub-long v4, v0, v2

    iget-wide v2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 332
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 334
    :cond_0
    iput-wide v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 335
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 339
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 340
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 341
    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v4, p1

    iget v4, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->playbackSpeed:F

    .line 342
    invoke-static {v6, v7, v4}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    .line 344
    iget-wide v6, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    return v2

    .line 347
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v0

    .line 348
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 353
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 354
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 355
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v7, v5, p1

    .line 356
    iget v1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->playbackSpeed:F

    .line 357
    invoke-static {v7, v8, v1}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v5

    .line 358
    iget-wide v7, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v6, 0x2d0

    if-ge v1, v6, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v5, 0x500

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method public updateSelectedTrack(JJJ)V
    .locals 8

    .line 269
    iget-object p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 271
    iget v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v1

    iput v1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    .line 273
    iget v1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    const/4 v2, 0x3

    if-ne v1, v0, :cond_1

    const-string p1, "HLS-Adaptive-Streaming"

    .line 274
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    const-string p2, "HLS-Adaptive-Streaming"

    .line 276
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateSelectedTrack: ideal format already selected = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 283
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 284
    iget p2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 285
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v1, v3, :cond_2

    .line 286
    invoke-direct {p0, p5, p6}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide v6

    cmp-long v1, p3, v6

    if-gez v1, :cond_2

    .line 289
    iput v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    const-string p1, "HLS-Adaptive-Streaming"

    .line 290
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "HLS-Adaptive-Streaming"

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSelectedTrack: The ideal track is a higher quality, but we have insufficient buffer to safely switch up (minimum required is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "%.5f"

    new-array p4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p5, p6}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide p5

    const-wide/32 v5, 0xf4240

    div-long/2addr p5, v5

    long-to-float p5, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seconds). Defer switching up for now."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge p2, p1, :cond_3

    iget-wide p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_3

    .line 297
    iput v0, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    const-string p1, "HLS-Adaptive-Streaming"

    .line 298
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "HLS-Adaptive-Streaming"

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSelectedTrack: The ideal track is a lower quality, but we have sufficient buffer (more than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "%.5f"

    new-array p4, v5, [Ljava/lang/Object;

    iget-wide p5, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    const-wide/16 v5, 0x3e8

    div-long/2addr p5, v5

    long-to-float p5, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seconds) to defer switching down for now."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    :goto_0
    iget p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->selectedIndex:I

    if-eq p1, v0, :cond_4

    .line 305
    iput v2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;->reason:I

    const-string p1, "HLS-Adaptive-Streaming"

    .line 306
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "HLS-Adaptive-Streaming"

    const-string p2, "updateSelectedTrack: ***** selected track was updated *****"

    .line 307
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
