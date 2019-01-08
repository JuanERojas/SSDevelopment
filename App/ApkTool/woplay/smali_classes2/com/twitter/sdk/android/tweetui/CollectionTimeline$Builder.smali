.class public Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;
.super Ljava/lang/Object;
.source "CollectionTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private collectionId:Ljava/lang/Long;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 176
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 184
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TweetUi instance must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->collectionId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "collection id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->collectionId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public id(Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->collectionId:Ljava/lang/Long;

    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    return-object p0
.end method
