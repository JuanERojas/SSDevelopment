.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$PicassoCallback;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PicassoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$PicassoCallback;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$PicassoCallback;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setErrorImage()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
