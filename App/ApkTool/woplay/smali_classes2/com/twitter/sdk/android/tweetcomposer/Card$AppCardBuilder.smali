.class public Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppCardBuilder"
.end annotation


# instance fields
.field private appGooglePlayId:Ljava/lang/String;

.field private appIPadId:Ljava/lang/String;

.field private appIPhoneId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/Card;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appName:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/Card;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appGooglePlayId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetcomposer/Card;
    .locals 9

    .line 131
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "App Card requires a non-null imageUri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/Card;

    const-string v3, "promo_image_app"

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appIPhoneId:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appIPadId:Ljava/lang/String;

    iget-object v8, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appGooglePlayId:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/twitter/sdk/android/tweetcomposer/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public googlePlayId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appGooglePlayId:Ljava/lang/String;

    return-object p0
.end method

.method public iPadId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appIPadId:Ljava/lang/String;

    return-object p0
.end method

.method public iPhoneId(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->appIPhoneId:Ljava/lang/String;

    return-object p0
.end method

.method public imageUri(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/Card$AppCardBuilder;->imageUri:Landroid/net/Uri;

    return-object p0
.end method
