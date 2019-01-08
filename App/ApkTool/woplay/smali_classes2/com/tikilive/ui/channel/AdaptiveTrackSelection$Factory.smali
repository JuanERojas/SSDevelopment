.class public final Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I

.field private final minTimeBetweenBufferReevaluationMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 11

    .line 43
    sget-object v10, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const v2, 0xc3500

    const/16 v3, 0x2710

    const/16 v4, 0x61a8

    const/16 v5, 0x61a8

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f400000    # 0.75f

    const-wide/16 v8, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIIFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIIF)V
    .locals 11

    .line 74
    sget-object v10, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 v7, 0x3f400000    # 0.75f

    const-wide/16 v8, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIIFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIIFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 124
    iput p2, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->maxInitialBitrate:I

    .line 125
    iput p3, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 126
    iput p4, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 127
    iput p5, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 128
    iput p6, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 129
    iput p7, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 131
    iput-wide p8, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    .line 132
    iput-object p10, p0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public bridge synthetic createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/tikilive/ui/channel/AdaptiveTrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public varargs createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/tikilive/ui/channel/AdaptiveTrackSelection;
    .locals 18

    move-object/from16 v0, p0

    .line 137
    new-instance v17, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;

    iget-object v4, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget v5, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->maxInitialBitrate:I

    iget v1, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v1

    iget v1, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v1

    iget v1, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v1

    iget v12, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v13, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-wide v14, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    iget-object v3, v0, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v16}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-object v17
.end method
