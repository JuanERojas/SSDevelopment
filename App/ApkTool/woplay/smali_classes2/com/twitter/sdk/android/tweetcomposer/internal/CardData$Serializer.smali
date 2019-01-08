.class Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;
.super Ljava/lang/Object;
.source "CardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method serialize(Lcom/twitter/sdk/android/tweetcomposer/internal/CardData;)Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/CardData$Serializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
