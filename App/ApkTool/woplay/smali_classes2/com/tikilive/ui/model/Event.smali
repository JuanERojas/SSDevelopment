.class public Lcom/tikilive/ui/model/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private duration:I

.field private dvrStatus:Lcom/tikilive/ui/model/EventDvrStatus;

.field private hasTicket:Z

.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ppv:Z

.field private purchaseUrl:Ljava/lang/String;

.field private start:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Event;->ppv:Z

    .line 19
    sget-object v0, Lcom/tikilive/ui/model/EventDvrStatus;->NONE:Lcom/tikilive/ui/model/EventDvrStatus;

    iput-object v0, p0, Lcom/tikilive/ui/model/Event;->dvrStatus:Lcom/tikilive/ui/model/EventDvrStatus;

    .line 22
    iput p1, p0, Lcom/tikilive/ui/model/Event;->id:I

    .line 23
    iput-object p2, p0, Lcom/tikilive/ui/model/Event;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tikilive/ui/model/Event;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/tikilive/ui/model/Event;->duration:I

    return v0
.end method

.method public getDvrStatus()Lcom/tikilive/ui/model/EventDvrStatus;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tikilive/ui/model/Event;->dvrStatus:Lcom/tikilive/ui/model/EventDvrStatus;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/tikilive/ui/model/Event;->id:I

    return v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->getImageUrl()Ljava/lang/String;

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

    .line 67
    iget-object v0, p0, Lcom/tikilive/ui/model/Event;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tikilive/ui/model/Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tikilive/ui/model/Event;->purchaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/tikilive/ui/model/Event;->start:I

    return v0
.end method

.method public getStatus()Lcom/tikilive/ui/model/EventDvrStatus;
    .locals 2

    .line 116
    sget-object v0, Lcom/tikilive/ui/model/Event$1;->$SwitchMap$com$tikilive$ui$model$EventDvrStatus:[I

    iget-object v1, p0, Lcom/tikilive/ui/model/Event;->dvrStatus:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/EventDvrStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/tikilive/ui/model/EventDvrStatus;->RECORDING:Lcom/tikilive/ui/model/EventDvrStatus;

    return-object v0

    .line 124
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/model/Event;->dvrStatus:Lcom/tikilive/ui/model/EventDvrStatus;

    return-object v0
.end method

.method public hasExpired()Z
    .locals 6

    .line 140
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 141
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 143
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTicket()Z
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Event;->ppv:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Event;->hasTicket:Z

    return v0

    :cond_0
    return v1
.end method

.method public isCurrent()Z
    .locals 8

    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 133
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 134
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v3

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v6

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long v6, v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 136
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPpv()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Event;->ppv:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tikilive/ui/model/Event;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/tikilive/ui/model/Event;->duration:I

    return-void
.end method

.method public setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tikilive/ui/model/Event;->dvrStatus:Lcom/tikilive/ui/model/EventDvrStatus;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/tikilive/ui/model/Event;->id:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tikilive/ui/model/Event;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tikilive/ui/model/Event;->name:Ljava/lang/String;

    return-void
.end method

.method public setPpv(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Event;->ppv:Z

    return-void
.end method

.method public setPurchaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tikilive/ui/model/Event;->purchaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/tikilive/ui/model/Event;->start:I

    return-void
.end method

.method public setTicket(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Event;->hasTicket:Z

    return-void
.end method
