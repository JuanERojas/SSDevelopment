.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;
.super Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;
.source "HtmlEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1074
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1077
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;-><init>(I)V

    return-void
.end method

.method private binarySearch(I)I
    .locals 4

    .line 1083
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1087
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 5

    .line 1102
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->ensureCapacity(I)V

    .line 1103
    invoke-direct {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 1110
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    aput p2, v1, v0

    .line 1112
    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    sub-int/2addr v2, v0

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    aput-object p1, p2, v0

    .line 1114
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 1

    .line 1119
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->binarySearch(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
