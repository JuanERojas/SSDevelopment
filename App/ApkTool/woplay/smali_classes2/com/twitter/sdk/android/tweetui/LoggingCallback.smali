.class abstract Lcom/twitter/sdk/android/tweetui/LoggingCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "LoggingCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/sdk/android/core/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cb:Lcom/twitter/sdk/android/core/Callback;

.field private final logger:Lio/fabric/sdk/android/Logger;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/Callback;Lio/fabric/sdk/android/Logger;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/LoggingCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    .line 44
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/LoggingCallback;->logger:Lio/fabric/sdk/android/Logger;

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LoggingCallback;->logger:Lio/fabric/sdk/android/Logger;

    const-string v1, "TweetUi"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LoggingCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LoggingCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method
