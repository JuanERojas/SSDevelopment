.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$PermalinkClickListener;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermalinkClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$PermalinkClickListener;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 970
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$PermalinkClickListener;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getPermalinkUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 972
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$PermalinkClickListener;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->scribePermalinkClick()V

    .line 973
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$PermalinkClickListener;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->launchPermalink()V

    return-void
.end method
