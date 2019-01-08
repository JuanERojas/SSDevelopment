.class public Lcom/tikilive/ui/backend/Recommendations;
.super Ljava/lang/Object;
.source "Recommendations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.backend.Recommendations"


# instance fields
.field private api:Lcom/tikilive/ui/backend/Api;

.field private currentIndex:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRetrieved:J

.field private rotationInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 55
    iput v0, p0, Lcom/tikilive/ui/backend/Recommendations;->rotationInterval:I

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/tikilive/ui/backend/Recommendations;->mLastRetrieved:J

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 60
    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/backend/Recommendations;->api:Lcom/tikilive/ui/backend/Api;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/tikilive/ui/backend/Recommendations;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tikilive/ui/backend/Recommendations;J)J
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/tikilive/ui/backend/Recommendations;->mLastRetrieved:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/tikilive/ui/backend/Recommendations;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/tikilive/ui/backend/Recommendations;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/tikilive/ui/backend/Recommendations;->rotationInterval:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/tikilive/ui/backend/Recommendations;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private retrieveFromServer(Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V
    .locals 3

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/tikilive/ui/backend/Recommendations;->api:Lcom/tikilive/ui/backend/Api;

    new-instance v2, Lcom/tikilive/ui/backend/Recommendations$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/tikilive/ui/backend/Recommendations$1;-><init>(Lcom/tikilive/ui/backend/Recommendations;Ljava/util/List;Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V

    new-instance p1, Lcom/tikilive/ui/backend/Recommendations$2;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/backend/Recommendations$2;-><init>(Lcom/tikilive/ui/backend/Recommendations;)V

    invoke-virtual {v1, v2, p1}, Lcom/tikilive/ui/backend/Api;->getRecommendations(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Recommendation;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    return-object v0
.end method

.method public getNext()Lcom/tikilive/ui/model/Recommendation;
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/backend/Recommendations;->getNext(Z)Lcom/tikilive/ui/model/Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Z)Lcom/tikilive/ui/model/Recommendation;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    iget v0, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 79
    iget v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 80
    iget v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    iget-object v3, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    .line 81
    iput v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 84
    :cond_1
    iget v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_2

    return-object v1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    iget v0, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Recommendation;

    return-object p1
.end method

.method public getPrevious()Lcom/tikilive/ui/model/Recommendation;
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/backend/Recommendations;->getPrevious(Z)Lcom/tikilive/ui/model/Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public getPrevious(Z)Lcom/tikilive/ui/model/Recommendation;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    iget v0, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 102
    iget v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 103
    iget v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    if-gez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    .line 107
    :cond_1
    iget v2, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_2

    return-object v1

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/backend/Recommendations;->items:Ljava/util/List;

    iget v0, p0, Lcom/tikilive/ui/backend/Recommendations;->currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Recommendation;

    return-object p1
.end method

.method public getRotationInterval()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/tikilive/ui/backend/Recommendations;->rotationInterval:I

    return v0
.end method

.method public refreshIfNeeded(Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V
    .locals 8

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    iget-wide v2, p0, Lcom/tikilive/ui/backend/Recommendations;->mLastRetrieved:J

    const-wide/32 v4, 0x36ee80

    sub-long v6, v0, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/tikilive/ui/backend/Recommendations;->retrieveFromServer(Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1, p0}, Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;->onRefresh(Lcom/tikilive/ui/backend/Recommendations;)V

    :goto_0
    return-void
.end method
