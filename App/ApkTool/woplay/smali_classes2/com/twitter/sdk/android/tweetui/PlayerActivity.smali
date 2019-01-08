.class public Lcom/twitter/sdk/android/tweetui/PlayerActivity;
.super Landroid/app/Activity;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;
    }
.end annotation


# static fields
.field public static final PLAYER_ITEM:Ljava/lang/String; = "PLAYER_ITEM"

.field static final SCRIBE_ITEM:Ljava/lang/String; = "SCRIBE_ITEM"

.field static final videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;


# instance fields
.field playerController:Lcom/twitter/sdk/android/tweetui/PlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetui/VideoScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private scribeCardPlayImpression(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->videoScribeClient:Lcom/twitter/sdk/android/tweetui/VideoScribeClient;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetui/VideoScribeClient;->play(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__player_activity:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PLAYER_ITEM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    const v0, 0x1020002

    .line 45
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/twitter/sdk/android/tweetui/PlayerController;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/tweetui/PlayerController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->playerController:Lcom/twitter/sdk/android/tweetui/PlayerController;

    .line 47
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->playerController:Lcom/twitter/sdk/android/tweetui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/PlayerController;->prepare(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V

    .line 49
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SCRIBE_ITEM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    .line 50
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->scribeCardPlayImpression(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->playerController:Lcom/twitter/sdk/android/tweetui/PlayerController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/PlayerController;->onDestroy()V

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->playerController:Lcom/twitter/sdk/android/tweetui/PlayerController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/PlayerController;->onPause()V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerActivity;->playerController:Lcom/twitter/sdk/android/tweetui/PlayerController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/PlayerController;->onResume()V

    return-void
.end method
