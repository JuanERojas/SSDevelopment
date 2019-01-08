.class public Lcom/twitter/sdk/android/Twitter;
.super Lio/fabric/sdk/android/Kit;
.source "Twitter.java"

# interfaces
.implements Lio/fabric/sdk/android/KitGroup;


# instance fields
.field public final core:Lcom/twitter/sdk/android/core/TwitterCore;

.field public final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field public final tweetComposer:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

.field public final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 62
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/TwitterCore;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 63
    new-instance p1, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-direct {p1}, Lcom/twitter/sdk/android/tweetui/TweetUi;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/Twitter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 64
    new-instance p1, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    invoke-direct {p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/Twitter;->tweetComposer:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    const/4 p1, 0x3

    .line 65
    new-array p1, p1, [Lio/fabric/sdk/android/Kit;

    iget-object v0, p0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/twitter/sdk/android/Twitter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/twitter/sdk/android/Twitter;->tweetComposer:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/Twitter;->kits:Ljava/util/Collection;

    return-void
.end method

.method private static checkInitialized()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->getInstance()Lcom/twitter/sdk/android/Twitter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start Twitter Kit with Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;
    .locals 1

    .line 136
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->checkInitialized()V

    .line 137
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->getInstance()Lcom/twitter/sdk/android/Twitter;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    return-object v0
.end method

.method public static getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;
    .locals 1

    .line 151
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->checkInitialized()V

    .line 152
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->getInstance()Lcom/twitter/sdk/android/Twitter;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/twitter/sdk/android/Twitter;
    .locals 1

    .line 52
    const-class v0, Lcom/twitter/sdk/android/Twitter;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/Twitter;

    return-object v0
.end method

.method public static getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/SessionManager<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->checkInitialized()V

    .line 123
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->getInstance()Lcom/twitter/sdk/android/Twitter;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->checkInitialized()V

    .line 100
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->getInstance()Lcom/twitter/sdk/android/Twitter;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/sdk/android/core/TwitterCore;->logIn(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public static logOut()V
    .locals 1

    .line 111
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->checkInitialized()V

    .line 112
    invoke-static {}, Lcom/twitter/sdk/android/Twitter;->getInstance()Lcom/twitter/sdk/android/Twitter;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/sdk/android/Twitter;->core:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->logOut()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.sdk.android:twitter"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/twitter/sdk/android/Twitter;->kits:Ljava/util/Collection;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.1.146"

    return-object v0
.end method
