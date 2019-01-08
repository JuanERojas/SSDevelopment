.class Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;
.super Ljava/lang/Object;
.source "ComposerScribeClientImpl.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClient;


# instance fields
.field private final scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scribeClient must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    return-void
.end method


# virtual methods
.method public click(Lcom/twitter/sdk/android/tweetcomposer/Card;Ljava/lang/String;)V
    .locals 2

    .line 53
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p2

    const-string v0, "click"

    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object p2

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->newCardScribeItem(Lcom/twitter/sdk/android/tweetcomposer/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    invoke-interface {p1, p2, v0}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method

.method public impression(Lcom/twitter/sdk/android/tweetcomposer/Card;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "impression"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->newCardScribeItem(Lcom/twitter/sdk/android/tweetcomposer/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method
