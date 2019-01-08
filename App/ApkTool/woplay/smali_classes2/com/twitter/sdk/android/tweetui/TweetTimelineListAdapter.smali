.class public Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;
.super Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;
.source "TweetTimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;,
        Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field protected actionCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field protected final styleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 44
    sget v0, Lcom/twitter/sdk/android/tweetui/R$style;->tw__TweetLightStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;)V

    .line 55
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->styleResId:I

    .line 56
    new-instance p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;

    invoke-direct {p1, p2, p4}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCount()I
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 68
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/models/Tweet;

    if-nez p2, :cond_0

    .line 70
    new-instance p2, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    iget-object p3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->context:Landroid/content/Context;

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->styleResId:I

    invoke-direct {p2, p3, p1, v0}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    .line 71
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {p2, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V

    goto :goto_0

    .line 74
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {p3, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic notifyDataSetChanged()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic notifyDataSetInvalidated()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public bridge synthetic refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public bridge synthetic registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public bridge synthetic unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
