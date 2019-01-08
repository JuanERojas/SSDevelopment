.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->success(Lcom/twitter/sdk/android/core/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/tweetcomposer/internal/CardCreate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;->this$1:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;->this$1:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/tweetcomposer/internal/CardCreate;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/tweetcomposer/internal/CardCreate;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/internal/CardCreate;->cardUri:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;->this$1:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$client:Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;->getComposerStatusesService()Lcom/twitter/sdk/android/tweetcomposer/StatusesService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;->this$1:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$text:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/tweetcomposer/StatusesService;->update(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
