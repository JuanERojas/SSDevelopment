.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setPhotoLauncher(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/models/MediaEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

.field final synthetic val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

.field final synthetic val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/MediaEntity;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 767
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    if-eqz p1, :cond_0

    .line 768
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;->onMediaEntityClick(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    goto :goto_0

    .line 770
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "MEDIA_ENTITY"

    .line 771
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "TWEET_ID"

    .line 772
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v1, v1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 773
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$3;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method
