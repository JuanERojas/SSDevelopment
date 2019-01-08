.class public Lcom/tikilive/ui/model/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ads:Z

.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private bigImageUrl:Ljava/lang/String;

.field private channelId:I

.field private description:Ljava/lang/String;

.field private duration:J

.field private externalUrl:Ljava/lang/String;

.field private hasAccess:Z

.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private isPremium:Z

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private ppv:Z

.field private price:Ljava/math/BigDecimal;

.field private purchaseUrl:Ljava/lang/String;

.field private rating:F

.field private ticket:Z

.field private url:Ljava/lang/String;

.field private videoCategory:Lcom/tikilive/ui/model/VideoCategory;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Video;->ppv:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/tikilive/ui/model/Video;->ticket:Z

    .line 24
    new-instance v2, Ljava/math/BigDecimal;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    iput-object v2, p0, Lcom/tikilive/ui/model/Video;->price:Ljava/math/BigDecimal;

    .line 29
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Video;->isPremium:Z

    .line 30
    iput-boolean v1, p0, Lcom/tikilive/ui/model/Video;->hasAccess:Z

    .line 35
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Video;->ads:Z

    .line 40
    iput p1, p0, Lcom/tikilive/ui/model/Video;->id:I

    .line 41
    iput-object p2, p0, Lcom/tikilive/ui/model/Video;->name:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->annotations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Annotation;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public getBigImageUrl()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->bigImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/tikilive/ui/model/VideoCategory;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->videoCategory:Lcom/tikilive/ui/model/VideoCategory;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/tikilive/ui/model/Video;->channelId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/tikilive/ui/model/Video;->duration:J

    return-wide v0
.end method

.method public getDurationFormatted()Ljava/lang/String;
    .locals 11

    .line 177
    iget-wide v0, p0, Lcom/tikilive/ui/model/Video;->duration:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 178
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    .line 179
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long v7, v0, v5

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    .line 180
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long v9, v0, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sub-long v7, v9, v0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-lez v8, :cond_0

    const-string v8, "%d:%02d:%02d"

    const/4 v10, 0x3

    .line 182
    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "%d:%02d"

    .line 184
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUrl()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->externalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/tikilive/ui/model/Video;->id:I

    return v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Video;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPurchaseURI()Ljava/net/URI;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 150
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Video;->getPurchaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurchaseUrl()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->purchaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/tikilive/ui/model/Video;->rating:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/tikilive/ui/model/Video;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccess()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Video;->hasAccess:Z

    return v0
.end method

.method public hasAds()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Video;->ads:Z

    return v0
.end method

.method public hasTicket()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Video;->ticket:Z

    return v0
.end method

.method public isPpv()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Video;->ppv:Z

    return v0
.end method

.method public isPremium()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Video;->isPremium:Z

    return v0
.end method

.method public setAccess(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Video;->hasAccess:Z

    return-void
.end method

.method public setAds(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Video;->ads:Z

    return-void
.end method

.method public setAnnotations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->annotations:Ljava/util/List;

    return-void
.end method

.method public setBigImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->bigImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Lcom/tikilive/ui/model/VideoCategory;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->videoCategory:Lcom/tikilive/ui/model/VideoCategory;

    return-void
.end method

.method public setChannelId(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/tikilive/ui/model/Video;->channelId:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 189
    iput-wide p1, p0, Lcom/tikilive/ui/model/Video;->duration:J

    return-void
.end method

.method public setExternalUrl(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->externalUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/tikilive/ui/model/Video;->id:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->owner:Ljava/lang/String;

    return-void
.end method

.method public setPpv(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Video;->ppv:Z

    return-void
.end method

.method public setPremium(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Video;->isPremium:Z

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 1

    .line 136
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tikilive/ui/model/Video;->price:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPrice(Ljava/math/BigDecimal;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->price:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPurchaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->purchaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setRating(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/tikilive/ui/model/Video;->rating:F

    return-void
.end method

.method public setTicket(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Video;->ticket:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    iput-object p1, p0, Lcom/tikilive/ui/model/Video;->url:Ljava/lang/String;

    return-void
.end method
