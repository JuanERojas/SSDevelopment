.class final Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;
.super Ljava/lang/Object;
.source "ScribeConstants.java"


# static fields
.field static final ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

.field static final SCRIBE_CANCEL_ELEMENT:Ljava/lang/String; = "cancel"

.field static final SCRIBE_CLICK_ACTION:Ljava/lang/String; = "click"

.field static final SCRIBE_COMPONENT:Ljava/lang/String; = ""

.field static final SCRIBE_IMPRESSION_ACTION:Ljava/lang/String; = "impression"

.field static final SCRIBE_IMPRESSION_ELEMENT:Ljava/lang/String; = ""

.field static final SCRIBE_PAGE:Ljava/lang/String; = "android"

.field static final SCRIBE_PROMO_APP_CARD_TYPE:I = 0x8

.field static final SCRIBE_SECTION:Ljava/lang/String; = "composer"

.field static final SCRIBE_TFW_CLIENT:Ljava/lang/String; = "tfw"

.field static final SCRIBE_TWEET_ELEMENT:Ljava/lang/String; = "tweet"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v1, "tfw"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    const-string v1, "composer"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newCardScribeItem(Lcom/twitter/sdk/android/tweetcomposer/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .locals 2

    .line 53
    new-instance p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setItemType(I)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object p0

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->setCardEvent(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$Builder;->build()Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p0

    return-object p0
.end method
