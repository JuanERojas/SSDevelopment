.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.super Landroid/app/Activity;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;
    }
.end annotation


# static fields
.field static final EXTRA_CARD:Ljava/lang/String; = "EXTRA_CARD"

.field static final EXTRA_HASHTAGS:Ljava/lang/String; = "EXTRA_HASHTAGS"

.field static final EXTRA_THEME:Ljava/lang/String; = "EXTRA_THEME"

.field static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_USER_TOKEN"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 43
    new-instance v3, Lcom/twitter/sdk/android/core/TwitterSession;

    const-string v1, ""

    const-wide/16 v4, -0x1

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    const-string v0, "EXTRA_CARD"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/twitter/sdk/android/tweetcomposer/Card;

    const-string v0, "EXTRA_HASHTAGS"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "EXTRA_THEME"

    .line 47
    sget v1, Lcom/twitter/sdk/android/tweetcomposer/R$style;->ComposerLight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setTheme(I)V

    .line 50
    sget p1, Lcom/twitter/sdk/android/tweetcomposer/R$layout;->tw__activity_composer:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setContentView(I)V

    .line 51
    sget p1, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__composer_view:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 52
    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    new-instance v6, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;

    invoke-direct {v6, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)V

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Lcom/twitter/sdk/android/tweetcomposer/Card;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;)V

    return-void
.end method
