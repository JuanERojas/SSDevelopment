.class final enum Lcom/google/common/math/LongMath$MillerRabinTester$2;
.super Lcom/google/common/math/LongMath$MillerRabinTester;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$MillerRabinTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1086
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V

    return-void
.end method

.method private plusMod(JJJ)J
    .locals 3

    sub-long v0, p5, p3

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    add-long v0, p1, p3

    sub-long p1, v0, p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    add-long p5, p1, p3

    move-wide p1, p5

    :goto_0
    return-wide p1
.end method

.method private times2ToThe32Mod(JJ)J
    .locals 2

    const/16 v0, 0x20

    .line 1096
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-long/2addr p1, v1

    .line 1099
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-wide p1
.end method


# virtual methods
.method mulMod(JJJ)J
    .locals 9

    const/16 v0, 0x20

    ushr-long v1, p1, v0

    ushr-long v3, p3, v0

    const-wide v5, 0xffffffffL

    and-long v7, p1, v5

    and-long p1, p3, v5

    mul-long p3, v1, v3

    .line 1120
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide p3

    mul-long v1, v1, p1

    add-long v5, p3, v1

    const-wide/16 p3, 0x0

    cmp-long v0, v5, p3

    if-gez v0, :cond_0

    .line 1123
    invoke-static {v5, v6, p5, p6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v5

    :cond_0
    mul-long v3, v3, v7

    const/4 p3, 0x0

    add-long p3, v5, v3

    .line 1127
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v1

    mul-long v7, v7, p1

    .line 1128
    invoke-static {v7, v8, p5, p6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method squareMod(JJ)J
    .locals 12

    move-object v7, p0

    move-wide v5, p3

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    const-wide v8, 0xffffffffL

    and-long v10, p1, v8

    mul-long v0, v2, v2

    .line 1143
    invoke-direct {v7, v0, v1, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v0

    mul-long v2, v2, v10

    const-wide/16 v8, 0x2

    mul-long v2, v2, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 1146
    invoke-static {v2, v3, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v2

    :cond_0
    const/4 v4, 0x0

    add-long v8, v0, v2

    .line 1150
    invoke-direct {v7, v8, v9, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v1

    mul-long v10, v10, v10

    .line 1151
    invoke-static {v10, v11, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
