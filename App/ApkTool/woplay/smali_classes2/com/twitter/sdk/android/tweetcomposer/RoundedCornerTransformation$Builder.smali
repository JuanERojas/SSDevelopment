.class public Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;
.super Ljava/lang/Object;
.source "RoundedCornerTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field bottomLeftRadius:I

.field bottomRightRadius:I

.field topLeftRadius:I

.field topRightRadius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation;
    .locals 3

    .line 95
    iget v0, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topLeftRadius:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topRightRadius:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomRightRadius:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomLeftRadius:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 100
    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topLeftRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topLeftRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topRightRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topRightRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomRightRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomRightRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomLeftRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomLeftRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 105
    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation;-><init>([F)V

    return-object v1

    .line 97
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Radius must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRadii(IIII)Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topLeftRadius:I

    .line 87
    iput p2, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topRightRadius:I

    .line 88
    iput p3, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomRightRadius:I

    .line 89
    iput p4, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomLeftRadius:I

    return-object p0
.end method

.method public setRadius(I)Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;
    .locals 0

    .line 76
    iput p1, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topLeftRadius:I

    .line 77
    iput p1, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->topRightRadius:I

    .line 78
    iput p1, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomRightRadius:I

    .line 79
    iput p1, p0, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->bottomLeftRadius:I

    return-object p0
.end method
