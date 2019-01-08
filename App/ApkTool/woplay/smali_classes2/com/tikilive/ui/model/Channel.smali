.class public Lcom/tikilive/ui/model/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHANNEL_STRETCHING_EXACT_FIT:Ljava/lang/String; = "exactfit"

.field public static final CHANNEL_STRETCHING_NONE:Ljava/lang/String; = "none"

.field public static final CHANNEL_STRETCHING_UNIFORM:Ljava/lang/String; = "uniform"


# instance fields
.field private currentEvent:Lcom/tikilive/ui/model/Event;

.field private dvr:Z

.field private freePreview:Z

.field private freePreviewTimeout:I

.field private genre:Ljava/lang/String;

.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private isAdult:Z

.field private isCatchUpTv:Z

.field private isHd:Z

.field private isPremium:Z

.field private isRadio:Z

.field private isSling:Z

.field private isTvEverywhere:Z

.field private live:Z

.field private name:Ljava/lang/String;

.field private number:I

.field private omniverse:Z

.field private peer5:Z

.field private requiredMembership:Z

.field private requiredMembershipInfo:Ljava/lang/String;

.field private requiredMembershipTimeout:I

.field private requiredMembershipTitle:Ljava/lang/String;

.field private stretching:Ljava/lang/String;

.field private tveProgramId:Ljava/lang/String;

.field private tveUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->live:Z

    .line 23
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isHd:Z

    .line 24
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isAdult:Z

    .line 25
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isCatchUpTv:Z

    .line 26
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isTvEverywhere:Z

    .line 29
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isSling:Z

    .line 30
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isRadio:Z

    .line 31
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isPremium:Z

    const-string v1, "uniform"

    .line 33
    iput-object v1, p0, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->omniverse:Z

    .line 35
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->dvr:Z

    .line 36
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->peer5:Z

    .line 38
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->freePreview:Z

    .line 39
    iput v0, p0, Lcom/tikilive/ui/model/Channel;->freePreviewTimeout:I

    .line 41
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembership:Z

    const/16 v0, 0xe10

    .line 42
    iput v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipTimeout:I

    .line 68
    iput p1, p0, Lcom/tikilive/ui/model/Channel;->number:I

    .line 69
    iput-object p2, p0, Lcom/tikilive/ui/model/Channel;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tikilive/ui/model/Channel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->live:Z

    .line 23
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isHd:Z

    .line 24
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isAdult:Z

    .line 25
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isCatchUpTv:Z

    .line 26
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isTvEverywhere:Z

    .line 29
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isSling:Z

    .line 30
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isRadio:Z

    .line 31
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isPremium:Z

    const-string v1, "uniform"

    .line 33
    iput-object v1, p0, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->omniverse:Z

    .line 35
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->dvr:Z

    .line 36
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->peer5:Z

    .line 38
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->freePreview:Z

    .line 39
    iput v0, p0, Lcom/tikilive/ui/model/Channel;->freePreviewTimeout:I

    .line 41
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembership:Z

    const/16 v0, 0xe10

    .line 42
    iput v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipTimeout:I

    .line 47
    iget v0, p1, Lcom/tikilive/ui/model/Channel;->number:I

    iput v0, p0, Lcom/tikilive/ui/model/Channel;->number:I

    .line 48
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->name:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/tikilive/ui/model/Channel;->id:I

    iput v0, p0, Lcom/tikilive/ui/model/Channel;->id:I

    .line 50
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->url:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->imageUrl:Ljava/lang/String;

    .line 52
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->live:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->live:Z

    .line 53
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    .line 54
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isHd:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isHd:Z

    .line 55
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isAdult:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isAdult:Z

    .line 56
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isCatchUpTv:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isCatchUpTv:Z

    .line 57
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isTvEverywhere:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isTvEverywhere:Z

    .line 58
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->tveUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->tveUrl:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->tveProgramId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->tveProgramId:Ljava/lang/String;

    .line 60
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isSling:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isSling:Z

    .line 61
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isRadio:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isRadio:Z

    .line 62
    iget-boolean v0, p1, Lcom/tikilive/ui/model/Channel;->isPremium:Z

    iput-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isPremium:Z

    .line 63
    iget-object v0, p1, Lcom/tikilive/ui/model/Channel;->genre:Ljava/lang/String;

    iput-object v0, p0, Lcom/tikilive/ui/model/Channel;->genre:Ljava/lang/String;

    .line 64
    iget-object p1, p1, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canDvr()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->dvr:Z

    return v0
.end method

.method public getCurrentEvent()Lcom/tikilive/ui/model/Event;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/tikilive/ui/model/Channel;->hasCurrentEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormattedNumber()Ljava/lang/String;
    .locals 4

    const-string v0, "%03d"

    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Channel;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreePreviewTimeout()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/tikilive/ui/model/Channel;->freePreviewTimeout:I

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/tikilive/ui/model/Channel;->id:I

    return v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 2

    .line 118
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

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

    .line 109
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/tikilive/ui/model/Channel;->number:I

    return v0
.end method

.method public getRequiredMembershipInfo()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredMembershipTimeout()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipTimeout:I

    return v0
.end method

.method public getRequiredMembershipTitle()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStretching()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    return-object v0
.end method

.method public getTveProgramId()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->tveProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public getTveUrl()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->tveUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasCurrentEvent()Z
    .locals 9

    .line 202
    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 207
    iget-object v2, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v0

    iget-object v6, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    invoke-virtual {v6}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v6

    add-int/2addr v0, v6

    int-to-long v6, v0

    mul-long v6, v6, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isAdult()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isAdult:Z

    return v0
.end method

.method public isCatchUpTv()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isCatchUpTv:Z

    return v0
.end method

.method public isFreePreview()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->freePreview:Z

    return v0
.end method

.method public isHd()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isHd:Z

    return v0
.end method

.method public isLive()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->live:Z

    return v0
.end method

.method public isOmniverse()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->omniverse:Z

    return v0
.end method

.method public isPeer5()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->peer5:Z

    return v0
.end method

.method public isPremium()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isPremium:Z

    return v0
.end method

.method public isRadio()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isRadio:Z

    return v0
.end method

.method public isRequiredMembership()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->requiredMembership:Z

    return v0
.end method

.method public isSling()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isSling:Z

    return v0
.end method

.method public isTvEverywhere()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Channel;->isTvEverywhere:Z

    return v0
.end method

.method public setCurrentEvent(Lcom/tikilive/ui/model/Event;)V
    .locals 0
    .param p1    # Lcom/tikilive/ui/model/Event;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->currentEvent:Lcom/tikilive/ui/model/Event;

    return-void
.end method

.method public setDvr(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->dvr:Z

    return-void
.end method

.method public setFreePreview(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->freePreview:Z

    return-void
.end method

.method public setFreePreviewTimeout(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/tikilive/ui/model/Channel;->freePreviewTimeout:I

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->genre:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/tikilive/ui/model/Channel;->id:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsAdult(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isAdult:Z

    return-void
.end method

.method public setIsCatchUpTv(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isCatchUpTv:Z

    return-void
.end method

.method public setIsHd(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isHd:Z

    return-void
.end method

.method public setIsPremium(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isPremium:Z

    return-void
.end method

.method public setIsRadio(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isRadio:Z

    return-void
.end method

.method public setIsSling(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isSling:Z

    return-void
.end method

.method public setIsTvEverywhere(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->isTvEverywhere:Z

    return-void
.end method

.method public setLive(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->live:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/tikilive/ui/model/Channel;->number:I

    return-void
.end method

.method public setOmniverse(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->omniverse:Z

    return-void
.end method

.method public setPeer5(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->peer5:Z

    return-void
.end method

.method public setRequiredMembership(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Channel;->requiredMembership:Z

    return-void
.end method

.method public setRequiredMembershipInfo(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipInfo:Ljava/lang/String;

    return-void
.end method

.method public setRequiredMembershipTimeout(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipTimeout:I

    return-void
.end method

.method public setRequiredMembershipTitle(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->requiredMembershipTitle:Ljava/lang/String;

    return-void
.end method

.method public setStretching(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uniform"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "exactfit"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "none"

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "uniform"

    .line 244
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    goto :goto_1

    .line 242
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->stretching:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setTveProgramId(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->tveProgramId:Ljava/lang/String;

    return-void
.end method

.method public setTveUrl(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->tveUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tikilive/ui/model/Channel;->url:Ljava/lang/String;

    return-void
.end method
