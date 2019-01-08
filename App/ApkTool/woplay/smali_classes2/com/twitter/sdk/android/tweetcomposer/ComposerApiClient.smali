.class Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;
.super Lcom/twitter/sdk/android/core/TwitterApiClient;
.source "ComposerApiClient.java"


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterSession;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    return-void
.end method


# virtual methods
.method getCardService()Lcom/twitter/sdk/android/tweetcomposer/internal/CardService;
    .locals 1

    .line 41
    const-class v0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardService;

    return-object v0
.end method

.method getComposerStatusesService()Lcom/twitter/sdk/android/tweetcomposer/StatusesService;
    .locals 1

    .line 34
    const-class v0, Lcom/twitter/sdk/android/tweetcomposer/StatusesService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerApiClient;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/StatusesService;

    return-object v0
.end method
