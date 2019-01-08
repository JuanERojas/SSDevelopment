.class public Lcom/twitter/sdk/android/tweetui/TweetUi;
.super Lio/fabric/sdk/android/Kit;
.source "TweetUi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/DependsOn;
    value = {
        Lcom/twitter/sdk/android/core/TwitterCore;
    }
.end annotation


# static fields
.field private static final KIT_SCRIBE_NAME:Ljava/lang/String; = "TweetUi"

.field static final LOGTAG:Ljava/lang/String; = "TweetUi"

.field static final NOT_STARTED_ERROR:Ljava/lang/String; = "Must start TweetUi Kit in Fabric.with()."


# instance fields
.field guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

.field private imageLoader:Lcom/squareup/picasso/Picasso;

.field scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

.field sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field

.field private tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    return-void
.end method

.method private static checkInitialized()V
    .locals 2

    .line 101
    const-class v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start TweetUi Kit in Fabric.with()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;
    .locals 1

    .line 57
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->checkInitialized()V

    .line 58
    const-class v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-object v0
.end method

.method private setUpScribeClient()V
    .locals 7

    .line 107
    new-instance v6, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const-string v2, "TweetUi"

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lio/fabric/sdk/android/services/common/IdManager;)V

    iput-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    .line 91
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->setUpScribeClient()V

    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.sdk.android:tweet-ui"

    return-object v0
.end method

.method getImageLoader()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.1.146"

    return-object v0
.end method

.method protected onPreExecute()Z
    .locals 3

    .line 73
    invoke-super {p0}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z

    .line 74
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 77
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getGuestSessionProvider()Lcom/twitter/sdk/android/core/GuestSessionProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 78
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetRepository;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/Fabric;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;-><init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/SessionManager;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    const/4 v0, 0x1

    return v0
.end method

.method scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method varargs scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 115
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setImageLoader(Lcom/squareup/picasso/Picasso;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method setTweetRepository(Lcom/twitter/sdk/android/tweetui/TweetRepository;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    return-void
.end method
