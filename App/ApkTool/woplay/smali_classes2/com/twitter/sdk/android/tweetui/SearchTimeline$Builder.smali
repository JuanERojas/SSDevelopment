.class public Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
.super Ljava/lang/Object;
.source "SearchTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/SearchTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private lang:Ljava/lang/String;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private query:Ljava/lang/String;

.field private resultType:Ljava/lang/String;

.field private tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

.field private untilDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    sget-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->FILTERED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TweetUi instance must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/SearchTimeline;
    .locals 9

    .line 230
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->query:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->lang:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->untilDate:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/twitter/sdk/android/tweetui/SearchTimeline;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public languageCode(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public resultType(Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0

    .line 188
    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    return-object p0
.end method

.method public untilDate(Ljava/util/Date;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 1

    .line 220
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/SearchTimeline;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->untilDate:Ljava/lang/String;

    return-object p0
.end method
