.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$5;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setErrorImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$5;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$5;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->mediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$5;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget v1, v1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->mediaBgColor:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setBackgroundColor(I)V

    return-void
.end method
