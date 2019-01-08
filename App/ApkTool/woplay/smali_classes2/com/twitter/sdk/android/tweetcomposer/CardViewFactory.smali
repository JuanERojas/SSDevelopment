.class Lcom/twitter/sdk/android/tweetcomposer/CardViewFactory;
.super Ljava/lang/Object;
.source "CardViewFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createCard(Landroid/content/Context;Lcom/twitter/sdk/android/tweetcomposer/Card;)Landroid/view/View;
    .locals 2

    .line 32
    iget-object v0, p2, Lcom/twitter/sdk/android/tweetcomposer/Card;->cardType:Ljava/lang/String;

    const-string v1, "promo_image_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->setCard(Lcom/twitter/sdk/android/tweetcomposer/Card;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
