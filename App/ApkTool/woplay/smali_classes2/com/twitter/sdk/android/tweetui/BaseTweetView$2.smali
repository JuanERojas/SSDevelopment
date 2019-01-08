.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setMediaLauncher(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/models/MediaEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

.field final synthetic val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 743
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    if-eqz p1, :cond_0

    .line 744
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;->onMediaEntityClick(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 749
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/tweetui/PlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isLooping(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$entity:Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->url:Ljava/lang/String;

    .line 752
    new-instance v2, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;-><init>(Ljava/lang/String;Z)V

    const-string v0, "PLAYER_ITEM"

    .line 754
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 756
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method
