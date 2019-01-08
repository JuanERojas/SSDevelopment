.class Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;
.super Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NextCallback"
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

    .line 231
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;-><init>(Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;)V

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

    .line 237
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    iput-object v0, v1, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->itemList:Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->notifyDataSetChanged()V

    .line 242
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->timelineCursor:Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;->setNextCursor(Lcom/twitter/sdk/android/tweetui/TimelineCursor;)V

    .line 245
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$DefaultCallback;->success(Lcom/twitter/sdk/android/core/Result;)V

    return-void
.end method
