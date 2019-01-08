.class final Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;
.super Ljava/lang/Object;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final BITS_PER_BYTE:I = 0x8


# instance fields
.field private final bitrate:I

.field private final dataSize:J

.field private final durationUs:J

.field private final firstFramePosition:J

.field private final frameSize:I


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    .line 44
    iget v0, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    .line 45
    iget p5, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    iput p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    const-wide/16 v0, -0x1

    cmp-long p5, p1, v0

    if-nez p5, :cond_0

    .line 47
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    sub-long v0, p1, p3

    .line 50
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 10

    .line 62
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 63
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 65
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0x7a1200

    div-long/2addr v0, v2

    .line 67
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v2, v2

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    .line 68
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v2, v2

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    add-long v4, v2, v0

    .line 70
    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide v2

    .line 71
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v7, v2, p1

    if-gez v7, :cond_2

    .line 72
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v2, v2

    sub-long v7, p1, v2

    cmp-long p1, v0, v7

    if-nez p1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long p1, p1

    add-long v0, v4, p1

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide p1

    .line 77
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 78
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 73
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 4

    .line 84
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    sub-long v2, p1, v0

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    const-wide/16 v0, 0x8

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
