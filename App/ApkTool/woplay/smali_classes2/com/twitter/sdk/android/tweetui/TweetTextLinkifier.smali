.class final Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;
.super Ljava/lang/Object;
.source "TweetTextLinkifier.java"


# static fields
.field private static final PHOTO_TYPE:Ljava/lang/String; = "photo"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;",
            "Lcom/twitter/sdk/android/tweetui/LinkClickListener;",
            "II)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 134
    iget v1, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    sub-int/2addr v1, v0

    .line 135
    iget v2, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    sub-int/2addr v2, v0

    if-ltz v1, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    if-eqz p2, :cond_2

    .line 140
    iget v3, p2, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;->start:I

    iget v4, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    if-ne v3, v4, :cond_2

    const-string v3, ""

    .line 141
    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 145
    :cond_2
    iget-object v3, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    iget-object v3, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    iget-object v3, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    sub-int v3, v2, v3

    sub-int v8, v2, v3

    add-int/2addr v0, v3

    .line 151
    new-instance v9, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;

    const/4 v5, 0x0

    move-object v2, v9

    move v3, p5

    move v4, p4

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;-><init>(IIZLcom/twitter/sdk/android/tweetui/LinkClickListener;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)V

    const/16 v2, 0x21

    .line 159
    invoke-virtual {p0, v9, v1, v8, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private static getLastPhotoEntity(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;)Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    .line 171
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 174
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 175
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    const-string v3, "photo"

    .line 176
    iget-object v4, v2, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static linkifyUrls(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/tweetui/LinkClickListener;ZII)Ljava/lang/CharSequence;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    return-object p0

    .line 59
    :cond_1
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-direct {v6, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    .line 64
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 68
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->getLastPhotoEntity(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;)Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 77
    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->mergeAndSortEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V

    return-object v6
.end method

.method static mergeAndSortEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    new-instance p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$1;

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
