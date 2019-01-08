.class public Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;
.super Ljava/lang/Object;
.source "FixedTweetTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TweetUi instance must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline;
    .locals 3

    .line 98
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;->tweets:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;Ljava/util/List;)V

    return-object v0
.end method

.method public setTweets(Ljava/util/List;)Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)",
            "Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/FixedTweetTimeline$Builder;->tweets:Ljava/util/List;

    return-object p0
.end method
