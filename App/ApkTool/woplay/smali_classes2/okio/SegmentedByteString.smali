.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .locals 7

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 56
    iget-wide v1, p1, Lokio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 61
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 62
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    if-ne v4, v5, :cond_0

    .line 63
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 65
    :cond_0
    iget v4, v2, Lokio/Segment;->limit:I

    iget v5, v2, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    .line 61
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 70
    :cond_1
    new-array v0, v3, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v3, v3, 0x2

    .line 71
    new-array v0, v3, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 74
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    move-object v0, p1

    const/4 p1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 75
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    iget-object v3, v0, Lokio/Segment;->data:[B

    aput-object v3, v2, p1

    .line 76
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 77
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    aput v1, v2, p1

    .line 78
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, p1

    iget v4, v0, Lokio/Segment;->pos:I

    aput v4, v2, v3

    const/4 v2, 0x1

    .line 79
    iput-boolean v2, v0, Lokio/Segment;->shared:Z

    add-int/2addr p1, v2

    .line 74
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private segment(I)I
    .locals 3

    .line 135
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private toByteString()Lokio/ByteString;
    .locals 2

    .line 221
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 226
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    .line 227
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 228
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 7

    .line 125
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 126
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 128
    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 129
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 8

    .line 232
    iget v0, p0, Lokio/SegmentedByteString;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 239
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    .line 240
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v0, v1

    aget v5, v5, v6

    .line 241
    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    aget v6, v6, v1

    sub-int v2, v6, v2

    add-int/2addr v2, v5

    :goto_1
    if-ge v5, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 244
    aget-byte v7, v4, v5

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    .line 248
    :cond_2
    iput v3, p0, Lokio/SegmentedByteString;->hashCode:I

    return v3
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public md5()Lokio/ByteString;
    .locals 1

    .line 105
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 6

    .line 186
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return v1

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_3

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 189
    :cond_1
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 190
    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 191
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 192
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v0

    aget v4, v4, v5

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 194
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v0

    invoke-virtual {p2, p3, v4, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .locals 6

    .line 203
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-gt p1, v0, :cond_4

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_0

    goto :goto_2

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_3

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 206
    :cond_1
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 207
    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 208
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 209
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v0

    aget v4, v4, v5

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 211
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v0

    invoke-static {v4, v2, p2, p3, v3}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public sha256()Lokio/ByteString;
    .locals 1

    .line 109
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 140
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public substring(I)Lokio/ByteString;
    .locals 1

    .line 117
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
    .locals 1

    .line 121
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1

    .line 97
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1

    .line 101
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 144
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    new-array v0, v0, [B

    .line 146
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v1, v2

    aget v4, v4, v5

    .line 148
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    aget v5, v5, v2

    .line 149
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v5, v3

    invoke-static {v6, v4, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 252
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 157
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 161
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    .line 162
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v2, v4, v2

    invoke-virtual {p1, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method write(Lokio/Buffer;)V
    .locals 8

    .line 169
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 171
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    .line 172
    new-instance v5, Lokio/Segment;

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v3, v4

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v3, v7}, Lokio/Segment;-><init>([BII)V

    .line 174
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    .line 175
    iput-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_1

    .line 177
    :cond_0
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v5}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 181
    :cond_1
    iget-wide v0, p1, Lokio/Buffer;->size:J

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p1, Lokio/Buffer;->size:J

    return-void
.end method