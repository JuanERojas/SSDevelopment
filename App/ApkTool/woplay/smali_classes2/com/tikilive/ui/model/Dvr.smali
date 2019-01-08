.class public Lcom/tikilive/ui/model/Dvr;
.super Ljava/lang/Object;
.source "Dvr.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/model/Dvr$Video;,
        Lcom/tikilive/ui/model/Dvr$Channel;
    }
.end annotation


# instance fields
.field private channel:Lcom/tikilive/ui/model/Dvr$Channel;

.field private event:Lcom/tikilive/ui/model/Event;

.field private status:Lcom/tikilive/ui/model/DvrStatus;

.field private video:Lcom/tikilive/ui/model/Dvr$Video;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/model/Event;Lcom/tikilive/ui/model/Dvr$Channel;Lcom/tikilive/ui/model/DvrStatus;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr;->event:Lcom/tikilive/ui/model/Event;

    .line 19
    iput-object p2, p0, Lcom/tikilive/ui/model/Dvr;->channel:Lcom/tikilive/ui/model/Dvr$Channel;

    .line 20
    iput-object p3, p0, Lcom/tikilive/ui/model/Dvr;->status:Lcom/tikilive/ui/model/DvrStatus;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/tikilive/ui/model/Dvr$Channel;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr;->channel:Lcom/tikilive/ui/model/Dvr$Channel;

    return-object v0
.end method

.method public getEvent()Lcom/tikilive/ui/model/Event;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr;->event:Lcom/tikilive/ui/model/Event;

    return-object v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 2

    .line 83
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Dvr;->getImageUrl()Ljava/lang/String;

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
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr;->status:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr$Video;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Event;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaults"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/tikilive/ui/model/Dvr;->getChannel()Lcom/tikilive/ui/model/Dvr$Channel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr$Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method public getStatus()Lcom/tikilive/ui/model/DvrStatus;
    .locals 2

    .line 25
    sget-object v0, Lcom/tikilive/ui/model/Dvr$1;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    iget-object v1, p0, Lcom/tikilive/ui/model/Dvr;->status:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr;->event:Lcom/tikilive/ui/model/Event;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    return-object v0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr;->status:Lcom/tikilive/ui/model/DvrStatus;

    return-object v0
.end method

.method public getVideo()Lcom/tikilive/ui/model/Dvr$Video;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr;->video:Lcom/tikilive/ui/model/Dvr$Video;

    return-object v0
.end method

.method public setChannel(Lcom/tikilive/ui/model/Dvr$Channel;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr;->channel:Lcom/tikilive/ui/model/Dvr$Channel;

    return-void
.end method

.method public setEvent(Lcom/tikilive/ui/model/Event;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr;->event:Lcom/tikilive/ui/model/Event;

    return-void
.end method

.method public setStatus(Lcom/tikilive/ui/model/DvrStatus;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr;->status:Lcom/tikilive/ui/model/DvrStatus;

    return-void
.end method

.method public setVideo(Lcom/tikilive/ui/model/Dvr$Video;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr;->video:Lcom/tikilive/ui/model/Dvr$Video;

    return-void
.end method
