.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
.super Ljava/lang/Object;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private card:Lcom/twitter/sdk/android/tweetcomposer/Card;

.field private final context:Landroid/content/Context;

.field private hashtags:Ljava/lang/String;

.field private themeResId:I

.field private token:Lcom/twitter/sdk/android/core/TwitterAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$style;->ComposerLight:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->themeResId:I

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public card(Lcom/twitter/sdk/android/tweetcomposer/Card;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->card:Lcom/twitter/sdk/android/tweetcomposer/Card;

    return-object p0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->token:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set a TwitterSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->context:Landroid/content/Context;

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_USER_TOKEN"

    .line 125
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->token:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "EXTRA_CARD"

    .line 126
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->card:Lcom/twitter/sdk/android/tweetcomposer/Card;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "EXTRA_THEME"

    .line 127
    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->themeResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_HASHTAGS"

    .line 128
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->hashtags:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public darkTheme()Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 1

    .line 116
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$style;->ComposerDark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->themeResId:I

    return-object p0
.end method

.method public varargs hashtags([Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 104
    sget-object v4, Lcom/twitter/Regex;->VALID_HASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " "

    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->hashtags:Ljava/lang/String;

    return-object p0
.end method

.method public session(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TwitterSession must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-nez p1, :cond_1

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TwitterSession token must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->token:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-object p0
.end method
