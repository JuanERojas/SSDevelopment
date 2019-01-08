.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;
.super Ljava/lang/Object;
.source "HtmlEntities.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEntityMap"
.end annotation


# instance fields
.field protected growBy:I

.field protected names:[Ljava/lang/String;

.field protected size:I

.field protected values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 1015
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    const/4 v0, 0x0

    .line 1017
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    .line 1024
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 1025
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 1015
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    const/4 v0, 0x0

    .line 1017
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    .line 1029
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    .line 1030
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 1031
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2

    .line 1035
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->ensureCapacity(I)V

    .line 1036
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    aput-object p1, v0, v1

    .line 1037
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    aput p2, p1, v0

    .line 1038
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 4

    .line 1042
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 1043
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1044
    new-array v0, p1, [Ljava/lang/String;

    .line 1045
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1046
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 1047
    new-array p1, p1, [I

    .line 1048
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    :cond_0
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1054
    :goto_0
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1056
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public value(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1063
    :goto_0
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
