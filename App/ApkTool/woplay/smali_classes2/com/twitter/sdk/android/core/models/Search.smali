.class public Lcom/twitter/sdk/android/core/models/Search;
.super Ljava/lang/Object;
.source "Search.java"


# instance fields
.field public final searchMetadata:Lcom/twitter/sdk/android/core/models/SearchMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "search_metadata"
    .end annotation
.end field

.field public final tweets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statuses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/twitter/sdk/android/core/models/SearchMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/core/models/SearchMetadata;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/Search;->tweets:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Search;->searchMetadata:Lcom/twitter/sdk/android/core/models/SearchMetadata;

    return-void
.end method
