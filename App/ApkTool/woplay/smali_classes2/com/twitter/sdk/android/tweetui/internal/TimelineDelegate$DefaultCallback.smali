.class Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final developerCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

.field final timelineStateHolder:Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
            "TT;>;>;",
            "Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;",
            ")V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 204
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;->finishTimelineRequest()V

    .line 218
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;->finishTimelineRequest()V

    .line 210
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    :cond_0
    return-void
.end method
