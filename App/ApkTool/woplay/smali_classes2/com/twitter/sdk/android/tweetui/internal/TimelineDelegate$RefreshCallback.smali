.class Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$RefreshCallback;
.super Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate<",
        "TT;>.NextCallback;"
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

    .line 257
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$RefreshCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;-><init>(Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/internal/TimelineStateHolder;)V

    return-void
.end method


# virtual methods
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

    .line 263
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$RefreshCallback;->this$0:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate$NextCallback;->success(Lcom/twitter/sdk/android/core/Result;)V

    return-void
.end method
