.class public Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
.super Ljava/lang/Object;
.source "CardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appCountry:Ljava/lang/String;

.field private appGooglePlayId:Ljava/lang/String;

.field private appIPadId:Ljava/lang/String;

.field private appIPhoneId:Ljava/lang/String;

.field private callToAction:Ljava/lang/String;

.field private card:Ljava/lang/String;

.field private cardData:Ljava/lang/String;

.field private ctaKey:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private site:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appCountry(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appCountry:Ljava/lang/String;

    return-object p0
.end method

.method public appGooglePlayId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appGooglePlayId:Ljava/lang/String;

    return-object p0
.end method

.method public appIPadId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appIPadId:Ljava/lang/String;

    return-object p0
.end method

.method public appIPhoneId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appIPhoneId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;
    .locals 15

    .line 188
    new-instance v14, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->card:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->image:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->site:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->cardData:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->callToAction:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->ctaKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->deviceId:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appIPhoneId:Ljava/lang/String;

    iget-object v10, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appIPadId:Ljava/lang/String;

    iget-object v11, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appGooglePlayId:Ljava/lang/String;

    iget-object v12, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->appCountry:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$1;)V

    return-object v14
.end method

.method public callToAction(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->callToAction:Ljava/lang/String;

    return-object p0
.end method

.method public card(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->card:Ljava/lang/String;

    return-object p0
.end method

.method public cardData(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->cardData:Ljava/lang/String;

    return-object p0
.end method

.method public ctaKey(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->ctaKey:Ljava/lang/String;

    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public image(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->image:Ljava/lang/String;

    return-object p0
.end method

.method public site(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Builder;->site:Ljava/lang/String;

    return-object p0
.end method
