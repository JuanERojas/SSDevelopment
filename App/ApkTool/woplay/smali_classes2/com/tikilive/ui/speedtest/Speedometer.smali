.class public Lcom/tikilive/ui/speedtest/Speedometer;
.super Landroid/view/View;
.source "Speedometer.java"


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mBitsPerSecond:J

.field private mHandPaint:Landroid/graphics/Paint;

.field private mInnerCircle:Landroid/graphics/Bitmap;

.field private mIsp:Ljava/lang/String;

.field private mProgress:I

.field private mProgressBarPaint:Landroid/graphics/Paint;

.field private mScaleFactor:F

.field private mSpeedUnitTextPaint:Landroid/graphics/Paint;

.field private mSpeedValueTextPaint:Landroid/graphics/Paint;

.field private mStarted:Z

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    .line 22
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    .line 39
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->initDrawingTools()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    .line 22
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    .line 44
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->initDrawingTools()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    .line 22
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    .line 49
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->initDrawingTools()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    .line 22
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    .line 54
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->initDrawingTools()V

    return-void
.end method

.method private drawHand(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v15, 0x2

    div-int/2addr v1, v15

    const/4 v2, 0x3

    .line 238
    new-array v13, v2, [Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/2addr v4, v15

    sub-int/2addr v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/2addr v5, v15

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    const/16 v16, 0x0

    aput-object v3, v13, v16

    new-instance v3, Landroid/graphics/Point;

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/2addr v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/2addr v5, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070227

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    const/16 v17, 0x1

    aput-object v3, v13, v17

    new-instance v3, Landroid/graphics/Point;

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/2addr v4, v15

    add-int/2addr v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/2addr v1, v15

    invoke-direct {v3, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v13, v15

    const/16 v1, 0x8

    .line 244
    new-array v4, v1, [F

    .line 245
    aget-object v1, v13, v16

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v4, v16

    .line 246
    aget-object v1, v13, v16

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v4, v17

    .line 247
    aget-object v1, v13, v17

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v4, v15

    .line 248
    aget-object v1, v13, v17

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v4, v2

    .line 249
    aget-object v1, v13, v15

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v4, v2

    .line 250
    aget-object v1, v13, v15

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v4, v2

    .line 251
    aget-object v1, v13, v16

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x6

    aput v1, v4, v2

    .line 252
    aget-object v1, v13, v16

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x7

    aput v1, v4, v2

    .line 254
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    iget-object v12, v0, Lcom/tikilive/ui/speedtest/Speedometer;->mHandPaint:Landroid/graphics/Paint;

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v1, v14

    move-object/from16 v19, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v19

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 255
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 256
    aget-object v2, v18, v16

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v3, v18, v16

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 257
    aget-object v2, v18, v17

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v3, v18, v17

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    aget-object v2, v18, v15

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v3, v18, v15

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getHandRotation()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getWidth()I

    move-result v3

    div-int/2addr v3, v15

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getHeight()I

    move-result v4

    div-int/2addr v4, v15

    int-to-float v4, v4

    invoke-virtual {v14, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 262
    iget-object v2, v0, Lcom/tikilive/ui/speedtest/Speedometer;->mHandPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private format(J)[Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 292
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Mbps"

    aput-object p1, v0, v3

    return-object v0

    :cond_0
    const-wide/16 v4, 0x3e8

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    .line 296
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "bps"

    aput-object p1, v0, v3

    return-object v0

    :cond_1
    long-to-double p1, p1

    .line 299
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    double-to-int v2, v4

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KMGTPE"

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v8, "%.2f"

    new-array v9, v3, [Ljava/lang/Object;

    int-to-double v10, v2

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v9, v1

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v2, "%sbps"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {p2, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 305
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    return-object v0
.end method

.method private getHandRotation()F
    .locals 9

    .line 267
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/high16 v0, 0x42760000    # 61.5f

    if-nez v4, :cond_0

    return v0

    .line 269
    :cond_0
    iget-wide v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v3, 0xf4240

    cmp-long v5, v1, v3

    const/high16 v1, 0x41e40000    # 28.5f

    const v2, 0x49742400    # 1000000.0f

    if-gtz v5, :cond_1

    .line 270
    iget-wide v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    long-to-float v3, v3

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    return v3

    .line 271
    :cond_1
    iget-wide v5, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v7, 0x1e8480

    cmp-long v0, v5, v7

    if-gtz v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    const v1, 0x41f66666    # 30.8f

    .line 272
    iget-wide v5, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v7, v5, v3

    long-to-float v3, v7

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    return v3

    .line 273
    :cond_2
    iget-wide v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v5, 0x2dc6c0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    const v0, 0x42f1999a    # 120.8f

    .line 274
    iget-wide v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v5, v3, v7

    long-to-float v3, v5

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    return v3

    .line 275
    :cond_3
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v4, v0, v2

    const/high16 v0, 0x41f60000    # 30.75f

    if-gtz v4, :cond_4

    const v1, 0x43154ccd    # 149.3f

    .line 276
    iget-wide v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v7, v2, v5

    long-to-float v2, v7

    mul-float v2, v2, v0

    const v0, 0x49f42400    # 2000000.0f

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    return v2

    .line 277
    :cond_4
    iget-wide v4, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v6, 0x989680

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    const v0, 0x43340ccd    # 180.05f

    const/high16 v1, 0x41f80000    # 31.0f

    .line 278
    iget-wide v4, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v6, v4, v2

    long-to-float v2, v6

    mul-float v2, v2, v1

    const v1, 0x4a989680    # 5000000.0f

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    return v2

    .line 279
    :cond_5
    iget-wide v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v3, 0x1312d00

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    const v0, 0x43530ccd    # 211.05f

    const v1, 0x41e0cccd    # 28.1f

    .line 280
    iget-wide v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v4, v2, v6

    long-to-float v2, v4

    mul-float v2, v2, v1

    const v1, 0x4b189680    # 1.0E7f

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    return v2

    .line 281
    :cond_6
    iget-wide v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v5, 0x2faf080

    cmp-long v7, v1, v5

    if-gtz v7, :cond_7

    const v1, 0x436f2667    # 239.15001f

    .line 282
    iget-wide v5, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v7, v5, v3

    long-to-float v2, v7

    mul-float v2, v2, v0

    const v0, 0x4be4e1c0    # 3.0E7f

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    return v2

    .line 283
    :cond_7
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    const-wide/32 v2, 0x5f5e100

    cmp-long v4, v0, v2

    if-gtz v4, :cond_8

    const v0, 0x4386f334    # 269.90002f

    const v1, 0x41e4cccd    # 28.6f

    .line 284
    iget-wide v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    sub-long v7, v2, v5

    long-to-float v2, v7

    mul-float v2, v2, v1

    const v1, 0x4c3ebc20    # 5.0E7f

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    return v2

    :cond_8
    const v0, 0x43954000    # 298.5f

    return v0
.end method

.method private initDrawingTools()V
    .locals 3

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mHandPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mHandPaint:Landroid/graphics/Paint;

    const-string v2, "#FF3824"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 64
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedUnitTextPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedUnitTextPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 69
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedUnitTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgressBarPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgressBarPaint:Landroid/graphics/Paint;

    const-string v1, "#0061C0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mIsp:Ljava/lang/String;

    return-void
.end method

.method private regenerateBackground()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    .line 186
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tikilive/ui/speedtest/Speedometer;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    return-void
.end method

.method private regenerateInnerCircle()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/tikilive/ui/speedtest/Speedometer;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    return-void
.end method

.method private resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move v0, p3

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v1, v1, v0

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    if-le v1, p2, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int v0, v0, p2

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    move v1, p2

    :cond_1
    if-le v0, p3, :cond_2

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    if-le v1, p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    const/4 v0, 0x1

    .line 222
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object p1

    :catch_1
    return-object p1

    :catch_2
    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/tikilive/ui/speedtest/Speedometer;->drawHand(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mInnerCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v0, v0, v1

    .line 128
    iget-object v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v1, v1, v2

    .line 131
    iget-object v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-wide v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    invoke-direct {p0, v2, v3}, Lcom/tikilive/ui/speedtest/Speedometer;->format(J)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 134
    aget-object v4, v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedValueTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x1

    .line 135
    aget-object v2, v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    add-float/2addr v6, v0

    div-float/2addr v1, v7

    add-float/2addr v6, v1

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mSpeedUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v0, v0, v1

    .line 138
    iget-object v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    .line 142
    iget-boolean v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f120202

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f120203

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07022c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v2, v2, v5

    add-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 150
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f120201

    new-array v6, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    .line 153
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120200

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mIsp:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v0, v0, v1

    .line 156
    iget v1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 157
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v2, v2, v3

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v7

    sub-float v5, v3, v0

    .line 160
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07022a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    mul-float v6, v0, v3

    add-float v7, v5, v1

    add-float v8, v6, v2

    .line 163
    iget-object v9, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgressBarPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    const p3, 0x7f07022e

    if-lt p1, p2, :cond_0

    int-to-float p1, p2

    .line 170
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 172
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mScaleFactor:F

    .line 175
    :goto_0
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->regenerateBackground()V

    .line 176
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->regenerateInnerCircle()V

    return-void
.end method

.method public setIsp(I)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mIsp:Ljava/lang/String;

    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mIsp:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    .line 109
    iput v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    .line 111
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->invalidate()V

    return-void
.end method

.method public update(IJ)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 85
    iput v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    goto :goto_0

    .line 87
    :cond_1
    iput p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mProgress:I

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_2

    .line 90
    iput-wide v0, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    goto :goto_1

    .line 92
    :cond_2
    iput-wide p2, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mBitsPerSecond:J

    :goto_1
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/tikilive/ui/speedtest/Speedometer;->mStarted:Z

    .line 95
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/Speedometer;->invalidate()V

    return-void
.end method
