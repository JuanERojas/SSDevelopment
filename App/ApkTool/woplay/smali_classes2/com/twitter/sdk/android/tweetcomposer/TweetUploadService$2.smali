.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadAppCardTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/models/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

.field final synthetic val$card:Lcom/twitter/sdk/android/tweetcomposer/Card;

.field final synthetic val$client:Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/tweetcomposer/Card;Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$card:Lcom/twitter/sdk/android/tweetcomposer/Card;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$client:Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

    iput-object p4, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$card:Lcom/twitter/sdk/android/tweetcomposer/Card;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/Media;

    iget-wide v1, p1, Lcom/twitter/sdk/android/core/models/Media;->mediaId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/twitter/sdk/android/tweetcomposer/CardDataFactory;->createAppCardData(Lcom/twitter/sdk/android/tweetcomposer/Card;Ljava/lang/Long;Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;->val$client:Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;->getCardService()Lcom/twitter/sdk/android/tweetcomposer/internal/CardService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/internal/CardService;->create(Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
