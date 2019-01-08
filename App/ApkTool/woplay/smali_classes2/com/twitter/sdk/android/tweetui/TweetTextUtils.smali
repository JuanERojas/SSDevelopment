.class final Lcom/twitter/sdk/android/tweetui/TweetTextUtils;
.super Ljava/lang/Object;
.source "TweetTextUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 178
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 180
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    const/4 v2, 0x0

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 183
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    if-gt v4, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    :cond_1
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 190
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method static adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 110
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 126
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 127
    aget v8, v7, v1

    const/4 v9, 0x1

    .line 128
    aget v7, v7, v9

    sub-int v8, v7, v8

    .line 131
    iget v9, v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    if-ge v7, v9, :cond_1

    add-int/2addr v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 135
    :cond_1
    iget v9, v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    if-ge v7, v9, :cond_2

    add-int/2addr v5, v8

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    :cond_3
    iget v2, v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    sub-int/2addr v2, v3

    iput v2, v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 141
    iget v2, v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    add-int/2addr v5, v3

    sub-int/2addr v2, v5

    iput v2, v4, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    move v2, v6

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method static adjustIndicesForSupplementaryChars(Ljava/lang/StringBuilder;Lcom/twitter/sdk/android/tweetui/FormattedTweetText;)V
    .locals 4

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 158
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    .line 165
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static convertEntities(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 3

    .line 58
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetEntities;->urls:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/UrlEntity;

    .line 63
    new-instance v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    invoke-direct {v2, v1}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;-><init>(Lcom/twitter/sdk/android/core/models/UrlEntity;)V

    .line 64
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 71
    new-instance v1, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;-><init>(Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method static format(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 3

    .line 85
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->HTML40:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->unescape(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->unescaped:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    iget-object v2, p1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 91
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 92
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForSupplementaryChars(Ljava/lang/StringBuilder;Lcom/twitter/sdk/android/tweetui/FormattedTweetText;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    return-void
.end method

.method static formatTweetText(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;-><init>()V

    .line 45
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->convertEntities(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 46
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->format(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-object v0
.end method
