.class public Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;
.super Ljava/lang/Object;
.source "TweetComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private imageUri:Landroid/net/Uri;

.field private text:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->createTwitterIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->createWebIntent()Landroid/content/Intent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method createTwitterIntent()Landroid/content/Intent;
    .locals 5

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url:Ljava/net/URL;

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x20

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "android.intent.extra.TEXT"

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    const-string v1, "android.intent.extra.STREAM"

    .line 223
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/jpeg"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 228
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 232
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.twitter.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method createWebIntent()Landroid/content/Intent;
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "https://twitter.com/intent/tweet?text=%s&url=%s"

    const/4 v2, 0x2

    .line 245
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text:Ljava/lang/String;

    invoke-static {v4}, Lio/fabric/sdk/android/services/network/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method public image(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 178
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "imageUri must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 182
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "imageUri already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public show()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 145
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "text must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "text already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/net/URL;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 161
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 165
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url:Ljava/net/URL;

    return-object p0
.end method
