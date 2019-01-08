.class final Lcom/google/android/exoplayer2/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputBufferSize:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequired:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private final numChannels:I

.field private numInputSamples:I

.field private numOutputSamples:I

.field private numPitchSamples:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputBufferSize:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchBufferSize:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopy:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    .line 74
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 75
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    .line 77
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int v0, v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int v0, v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int v0, v0, p2

    new-array p2, v0, [S

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 p2, 0x0

    .line 84
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 85
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 86
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 87
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    .line 88
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    int-to-float p1, p1

    int-to-float p2, p5

    div-float/2addr p1, p2

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    return-void
.end method

.method private adjustRate(FI)V
    .locals 8

    .line 340
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-ne v0, p2, :cond_0

    return-void

    .line 343
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 344
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    :goto_0
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_7

    if-le v0, v1, :cond_1

    goto :goto_5

    .line 350
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 352
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_6

    .line 353
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/2addr v2, v3

    mul-int v2, v2, p1

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int v4, v4, v0

    if-le v2, v4, :cond_3

    .line 354
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    const/4 v2, 0x0

    .line 355
    :goto_3
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ge v2, v4, :cond_2

    .line 356
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v5, v5, v6

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v7, v7, v1

    add-int/2addr v7, v2

    .line 357
    invoke-direct {p0, v6, v7, v0, p1}, Lcom/google/android/exoplayer2/audio/Sonic;->interpolate([SIII)S

    move-result v6

    aput-short v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 359
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 360
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    goto :goto_2

    .line 362
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 363
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    if-ne v2, v0, :cond_5

    .line 364
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 365
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    if-ne v2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 366
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/Sonic;->removePitchSamples(I)V

    return-void

    .line 347
    :cond_7
    :goto_5
    div-int/lit8 p1, p1, 0x2

    .line 348
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private changeSpeed(F)V
    .locals 8

    .line 407
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    if-ge v0, v1, :cond_0

    return-void

    .line 410
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    const/4 v1, 0x0

    .line 413
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    if-lez v2, :cond_2

    .line 414
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriod([SIZ)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 418
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    .line 420
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v2

    add-int/2addr v1, v2

    .line 423
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 424
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->removeProcessedInputSamples(I)V

    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 189
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    return v0
.end method

.method private copyToOutput([SII)V
    .locals 3

    .line 180
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p2, p2, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, p3

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6

    .line 196
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    div-int/2addr v0, p3

    .line 197
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, p3

    .line 198
    iget p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p2, p2, p3

    const/4 p3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    mul-int v5, v2, v1

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 202
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    :cond_0
    div-int/2addr v4, v1

    .line 205
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enlargeInputBufferIfNeeded(I)V
    .locals 2

    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    if-le v0, v1, :cond_0

    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 168
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    :cond_0
    return-void
.end method

.method private enlargeOutputBufferIfNeeded(I)V
    .locals 2

    .line 159
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    if-le v0, v1, :cond_0

    .line 160
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 161
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    :cond_0
    return-void
.end method

.method private findPitchPeriod([SIZ)I
    .locals 6

    .line 273
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 275
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 277
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 278
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    if-eq v0, v2, :cond_5

    mul-int v1, v1, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int v3, v1, v0

    add-int/2addr v1, v0

    .line 283
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    if-ge v3, v0, :cond_2

    .line 284
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 286
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    if-le v1, v0, :cond_3

    .line 287
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 289
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v0, v2, :cond_4

    .line 290
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 292
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, p1, v5, v3, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    .line 297
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->previousPeriodBetter(IIZ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 298
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    goto :goto_2

    :cond_6
    move p2, p1

    .line 302
    :goto_2
    iget p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 303
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    return p2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 9

    .line 216
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xff

    :goto_0
    if-gt p3, p4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 220
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 221
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 222
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v2

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_1

    move v2, p3

    move v0, v6

    :cond_1
    mul-int v5, v6, v4

    mul-int v7, v3, p3

    if-le v5, v7, :cond_2

    move v4, p3

    move v3, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 236
    :cond_3
    div-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    .line 237
    div-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    return v2
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 9

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    int-to-float v0, p4

    mul-float v0, v0, p3

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    goto :goto_0

    :cond_0
    int-to-float v0, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    .line 395
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    move p3, p4

    :goto_0
    add-int v8, p4, p3

    .line 397
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 398
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v3, p4

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v3, v0, p4

    add-int v5, p2, p4

    move v0, p3

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 402
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return p3
.end method

.method private interpolate([SIII)S
    .locals 2

    .line 329
    aget-short v0, p1, p2

    .line 330
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    add-int/2addr p2, v1

    aget-short p1, p1, p2

    .line 331
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int p2, p2, p3

    .line 332
    iget p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    mul-int p3, p3, p4

    .line 333
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, p4

    sub-int p2, v1, p2

    sub-int/2addr v1, p3

    mul-int v0, v0, p2

    sub-int p2, v1, p2

    mul-int p2, p2, p1

    add-int/2addr v0, p2

    .line 336
    div-int/2addr v0, v1

    int-to-short p1, v0

    return p1
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6

    .line 308
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int/2addr v0, p1

    .line 309
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    if-le v1, v2, :cond_0

    .line 310
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 311
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v5, v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 316
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_0

    .line 450
    aget-short v6, p4, v4

    sub-int v7, p0, v2

    mul-int v6, v6, v7

    aget-short v7, p6, v5

    mul-int v7, v7, v2

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v4, p1

    add-int/2addr v5, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private previousPeriodBetter(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 246
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    mul-int/lit8 p3, p1, 0x3

    if-le p2, p3, :cond_1

    return v0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 254
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 p2, p2, 0x3

    if-gt p1, p2, :cond_3

    return v0

    .line 259
    :cond_2
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    if-gt p1, p2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private processStreamInput()V
    .locals 8

    .line 429
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 430
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 431
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    mul-float v2, v2, v3

    float-to-double v3, v1

    const-wide v5, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v7, v3, v5

    if-gtz v7, :cond_1

    const-wide v5, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 436
    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    goto :goto_1

    .line 433
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->changeSpeed(F)V

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2

    .line 439
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->adjustRate(FI)V

    :cond_2
    return-void
.end method

.method private removePitchSamples(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v4, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    return-void
.end method

.method private removeProcessedInputSamples(I)V
    .locals 5

    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    sub-int/2addr v0, p1

    .line 174
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p1, p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v3, v0

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    int-to-float v0, p4

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int p3, v0

    goto :goto_0

    :cond_0
    int-to-float v1, p4

    sub-float/2addr v0, p3

    mul-float v1, v1, v0

    sub-float/2addr p3, v2

    div-float/2addr v1, p3

    float-to-int p3, v1

    .line 379
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    move p3, p4

    .line 381
    :goto_0
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 382
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v7, p2, p4

    move v0, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 384
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return p3
.end method


# virtual methods
.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 114
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 116
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v4

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSamplesAvailable()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return v0
.end method

.method public queueEndOfStream()V
    .locals 6

    .line 126
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 127
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 128
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    mul-float v2, v2, v3

    .line 129
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v3, v1

    .line 133
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v4, v4, v5

    if-ge v2, v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v5, v5, v0

    add-int/2addr v5, v2

    aput-short v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 138
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 140
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-le v0, v3, :cond_1

    .line 141
    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 144
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 145
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    .line 146
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 99
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    div-int/2addr v0, v1

    .line 100
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 101
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 102
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 103
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    return-void
.end method
