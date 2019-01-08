.class public Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
.super Ljava/lang/Object;
.source "UserTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/UserTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private includeReplies:Ljava/lang/Boolean;

.field private includeRetweets:Ljava/lang/Boolean;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private screenName:Ljava/lang/String;

.field private final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TweetUi instance must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/UserTimeline;
    .locals 8

    .line 168
    new-instance v7, Lcom/twitter/sdk/android/tweetui/UserTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->userId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->screenName:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeReplies:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/UserTimeline;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v7
.end method

.method public includeReplies(Ljava/lang/Boolean;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeReplies:Ljava/lang/Boolean;

    return-object p0
.end method

.method public includeRetweets(Ljava/lang/Boolean;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    return-object p0
.end method

.method public screenName(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->screenName:Ljava/lang/String;

    return-object p0
.end method

.method public userId(Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->userId:Ljava/lang/Long;

    return-object p0
.end method
