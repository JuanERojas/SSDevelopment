.class public Lcom/tikilive/ui/model/Dvr$Channel;
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
    name = "Channel"
.end annotation


# instance fields
.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/tikilive/ui/model/Dvr$Channel;->id:I

    .line 97
    iput-object p2, p0, Lcom/tikilive/ui/model/Dvr$Channel;->name:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/tikilive/ui/model/Dvr$Channel;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/tikilive/ui/model/Dvr$Channel;->id:I

    return v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 2

    .line 127
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/tikilive/ui/model/Dvr$Channel;->getImageUrl()Ljava/lang/String;

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

    .line 118
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr$Channel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tikilive/ui/model/Dvr$Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/tikilive/ui/model/Dvr$Channel;->id:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr$Channel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tikilive/ui/model/Dvr$Channel;->name:Ljava/lang/String;

    return-void
.end method
