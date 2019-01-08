.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;
.super Ljava/lang/Object;
.source "BaseTweetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DependencyProvider"
.end annotation


# instance fields
.field tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

.field videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getImageLoader()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 1009
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getImageLoader()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method

.method getTweetScribeClient()Lcom/twitter/sdk/android/tweetui/TweetScribeClient;
    .locals 2

    .line 992
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->getTweetUi()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    return-object v0
.end method

.method getTweetUi()Lcom/twitter/sdk/android/tweetui/TweetUi;
    .locals 1

    .line 988
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    return-object v0
.end method

.method getVideoScribeClient()Lcom/twitter/sdk/android/tweetui/VideoScribeClient;
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->getTweetUi()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$DependencyProvider;->videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;

    return-object v0
.end method
