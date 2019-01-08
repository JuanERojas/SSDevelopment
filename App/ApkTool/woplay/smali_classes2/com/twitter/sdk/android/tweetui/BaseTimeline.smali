.class abstract Lcom/twitter/sdk/android/tweetui/BaseTimeline;
.super Ljava/lang/Object;
.source "BaseTimeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;
    }
.end annotation


# instance fields
.field protected final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TweetUi instance must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 38
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->scribeImpression()V

    return-void
.end method

.method static decrementMaxId(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private scribeImpression()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->getTimelineType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getSyndicatedSdkTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->getTimelineType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getTfwClientTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    return-void
.end method


# virtual methods
.method abstract getTimelineType()Ljava/lang/String;
.end method
