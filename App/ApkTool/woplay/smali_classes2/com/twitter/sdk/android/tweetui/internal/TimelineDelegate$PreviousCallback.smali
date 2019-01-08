.class Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$PreviousCallback;
.super Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviousCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate<",
        "TT;>.DefaultCallback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;)V
    .locals 1

    .line 275
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$PreviousCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;-><init>(Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 281
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$PreviousCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->itemList:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$PreviousCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->notifyDataSetChanged()V

    .line 284
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$PreviousCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->timelineCursor:Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;->setPreviousCursor(Lcom/twitter/sdk/android/tweetui/TimelineCursor;)V

    .line 287
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->success(Lcom/twitter/sdk/android/core/Result;)V

    return-void
.end method
