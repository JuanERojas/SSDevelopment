.class Lcom/twitter/sdk/android/tweetcomposer/ComposerController;
.super Ljava/lang/Object;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;
    }
.end annotation


# instance fields
.field final card:Lcom/twitter/sdk/android/tweetcomposer/Card;

.field final composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

.field final dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

.field final finisher:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

.field final session:Lcom/twitter/sdk/android/core/TwitterSession;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Lcom/twitter/sdk/android/tweetcomposer/Card;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;)V
    .locals 7

    .line 43
    new-instance v6, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    invoke-direct {v6}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Lcom/twitter/sdk/android/tweetcomposer/Card;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Lcom/twitter/sdk/android/tweetcomposer/Card;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 51
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    .line 52
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->card:Lcom/twitter/sdk/android/tweetcomposer/Card;

    .line 53
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->finisher:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

    .line 54
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    .line 56
    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;)V

    .line 57
    invoke-virtual {p1, p4}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setTweetText(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->setProfilePhoto()V

    .line 59
    invoke-virtual {p0, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->setCardView(Lcom/twitter/sdk/android/tweetcomposer/Card;)V

    .line 60
    invoke-virtual {p6}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;->getScribeClient()Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClient;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClient;->impression(Lcom/twitter/sdk/android/tweetcomposer/Card;)V

    return-void
.end method

.method static isPostEnabled(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x8c

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isTweetTextOverflow(I)Z
    .locals 1

    const/16 v0, 0x8c

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static remainingCharCount(I)I
    .locals 0

    rsub-int p0, p0, 0x8c

    return p0
.end method


# virtual methods
.method setCardView(Lcom/twitter/sdk/android/tweetcomposer/Card;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;->getCardViewFactory()Lcom/twitter/sdk/android/tweetcomposer/CardViewFactory;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/sdk/android/tweetcomposer/CardViewFactory;->createCard(Landroid/content/Context;Lcom/twitter/sdk/android/tweetcomposer/Card;)Landroid/view/View;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCardView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setProfilePhoto()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;->getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method tweetTextLength(Ljava/lang/String;)I
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;->getTweetValidator()Lcom/twitter/Validator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/Validator;->getTweetLength(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
