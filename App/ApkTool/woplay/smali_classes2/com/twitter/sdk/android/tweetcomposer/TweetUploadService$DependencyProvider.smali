.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;
.super Ljava/lang/Object;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DependencyProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 181
    invoke-static {}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getInstance()Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getComposerApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;
    .locals 1

    .line 177
    invoke-static {}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getInstance()Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;

    move-result-object p1

    return-object p1
.end method
