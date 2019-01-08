.class public Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;
.super Ljava/lang/Object;
.source "Ads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/backend/Ads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TremorAdsSettings"
.end annotation


# instance fields
.field private adCode:Ljava/lang/String;

.field private livePreRoll:Z

.field private supplyCode:Ljava/lang/String;

.field private videoMidRoll:Z

.field private videoPostRoll:Z

.field private videoPreRoll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 111
    iput-object v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->adCode:Ljava/lang/String;

    const-string v0, ""

    .line 112
    iput-object v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->supplyCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPreRoll:Z

    .line 115
    iput-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoMidRoll:Z

    .line 116
    iput-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPostRoll:Z

    .line 118
    iput-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->livePreRoll:Z

    return-void
.end method


# virtual methods
.method public getAdCode()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->adCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplyCode()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->supplyCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasLivePreRoll()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->livePreRoll:Z

    return v0
.end method

.method public hasVideoAds()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPreRoll:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoMidRoll:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPostRoll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasVideoMidRoll()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoMidRoll:Z

    return v0
.end method

.method public hasVideoPostRoll()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPostRoll:Z

    return v0
.end method

.method public hasVideoPreRoll()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPreRoll:Z

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->adCode:Ljava/lang/String;

    return-void
.end method

.method public setLivePreRoll(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->livePreRoll:Z

    return-void
.end method

.method public setSupplyCode(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->supplyCode:Ljava/lang/String;

    return-void
.end method

.method public setVideoMidRoll(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoMidRoll:Z

    return-void
.end method

.method public setVideoPostRoll(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPostRoll:Z

    return-void
.end method

.method public setVideoPreRoll(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/tikilive/ui/backend/Ads$TremorAdsSettings;->videoPreRoll:Z

    return-void
.end method
