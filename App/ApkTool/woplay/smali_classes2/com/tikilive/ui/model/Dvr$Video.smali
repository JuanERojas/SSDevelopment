.class public Lcom/tikilive/ui/model/Dvr$Video;
.super Ljava/lang/Object;
.source "Dvr.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/model/Dvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field private bigImageUrl:Ljava/lang/String;

.field private duration:J

.field private imageUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr$Video;->imageUrl:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/tikilive/ui/model/Dvr$Video;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBigImageUrl()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr$Video;->bigImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/tikilive/ui/model/Dvr$Video;->duration:J

    return-wide v0
.end method

.method public getDurationFormatted()Ljava/lang/String;
    .locals 11

    .line 184
    iget-wide v0, p0, Lcom/tikilive/ui/model/Dvr$Video;->duration:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 185
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    .line 186
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long v7, v0, v5

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    .line 187
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

    .line 189
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

    .line 191
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

.method public getImageURI()Ljava/net/URI;
    .locals 2

    .line 164
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Dvr$Video;->getImageUrl()Ljava/lang/String;

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

    .line 147
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr$Video;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr$Video;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBigImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr$Video;->bigImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 196
    iput-wide p1, p0, Lcom/tikilive/ui/model/Dvr$Video;->duration:J

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr$Video;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr$Video;->url:Ljava/lang/String;

    return-void
.end method
