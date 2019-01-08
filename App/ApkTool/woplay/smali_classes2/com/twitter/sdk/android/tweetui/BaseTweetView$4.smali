.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setVineCardLauncher(Ljava/lang/Long;Lcom/twitter/sdk/android/core/models/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

.field final synthetic val$tweetId:Ljava/lang/Long;

.field final synthetic val$vineCard:Lcom/twitter/sdk/android/core/models/Card;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/Card;Ljava/lang/Long;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->val$vineCard:Lcom/twitter/sdk/android/core/models/Card;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->val$tweetId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 783
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/tweetui/PlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->val$vineCard:Lcom/twitter/sdk/android/core/models/Card;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getStreamUrl(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->val$vineCard:Lcom/twitter/sdk/android/core/models/Card;

    invoke-static {v1}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getCallToActionUrl(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;

    move-result-object v1

    .line 786
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/sdk/android/tweetui/R$string;->tw__cta_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 788
    new-instance v3, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v2, v1}, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLAYER_ITEM"

    .line 791
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 793
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->val$tweetId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->val$vineCard:Lcom/twitter/sdk/android/core/models/Card;

    invoke-static {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweetCard(JLcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    const-string v1, "SCRIBE_ITEM"

    .line 794
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 796
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$4;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
