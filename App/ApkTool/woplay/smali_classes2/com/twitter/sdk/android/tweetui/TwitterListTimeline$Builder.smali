.class public Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
.super Ljava/lang/Object;
.source "TwitterListTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private includeRetweets:Ljava/lang/Boolean;

.field private listId:Ljava/lang/Long;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private ownerId:Ljava/lang/Long;

.field private ownerScreenName:Ljava/lang/String;

.field private slug:Ljava/lang/String;

.field private final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TweetUi instance must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;
    .locals 10

    .line 175
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->listId:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must specify either a list id or slug/owner pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerId:Ljava/lang/Long;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerScreenName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "slug/owner pair must set owner via ownerId or ownerScreenName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_3
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->listId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerScreenName:Ljava/lang/String;

    iget-object v8, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public id(Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->listId:Ljava/lang/Long;

    return-object p0
.end method

.method public includeRetweets(Ljava/lang/Boolean;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    return-object p0
.end method

.method public slugWithOwnerId(Ljava/lang/String;Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerId:Ljava/lang/Long;

    return-object p0
.end method

.method public slugWithOwnerScreenName(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerScreenName:Ljava/lang/String;

    return-object p0
.end method
