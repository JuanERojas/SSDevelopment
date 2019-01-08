.class public Lcom/tikilive/ui/model/Package;
.super Ljava/lang/Object;
.source "Package.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/model/Package$Period;,
        Lcom/tikilive/ui/model/Package$Type;
    }
.end annotation


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private hasSubscription:Z

.field private id:I

.field private length:I

.field private name:Ljava/lang/String;

.field private period:Lcom/tikilive/ui/model/Package$Period;

.field private price:D

.field private recurring:Z

.field private thumb:Ljava/lang/String;

.field private type:Lcom/tikilive/ui/model/Package$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Package;->hasSubscription:Z

    .line 23
    sget-object v1, Lcom/tikilive/ui/model/Package$Type;->GROUP:Lcom/tikilive/ui/model/Package$Type;

    iput-object v1, p0, Lcom/tikilive/ui/model/Package;->type:Lcom/tikilive/ui/model/Package$Type;

    .line 24
    iput-boolean v0, p0, Lcom/tikilive/ui/model/Package;->recurring:Z

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/tikilive/ui/model/Package;->length:I

    .line 26
    sget-object v0, Lcom/tikilive/ui/model/Package$Period;->MONTH:Lcom/tikilive/ui/model/Package$Period;

    iput-object v0, p0, Lcom/tikilive/ui/model/Package;->period:Lcom/tikilive/ui/model/Package$Period;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/model/Package;->channels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/tikilive/ui/model/Package;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tikilive/ui/model/Package;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/tikilive/ui/model/Package;->id:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/tikilive/ui/model/Package;->length:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tikilive/ui/model/Package;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Lcom/tikilive/ui/model/Package$Period;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tikilive/ui/model/Package;->period:Lcom/tikilive/ui/model/Package$Period;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/tikilive/ui/model/Package;->price:D

    return-wide v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tikilive/ui/model/Package;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/tikilive/ui/model/Package$Type;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/tikilive/ui/model/Package;->type:Lcom/tikilive/ui/model/Package$Type;

    return-object v0
.end method

.method public hasSubscription()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Package;->hasSubscription:Z

    return v0
.end method

.method public isRecurring()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/tikilive/ui/model/Package;->recurring:Z

    return v0
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Channel;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/tikilive/ui/model/Package;->channels:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tikilive/ui/model/Package;->description:Ljava/lang/String;

    return-void
.end method

.method public setHasSubscription(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Package;->hasSubscription:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/tikilive/ui/model/Package;->id:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/tikilive/ui/model/Package;->length:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tikilive/ui/model/Package;->name:Ljava/lang/String;

    return-void
.end method

.method public setPeriod(Lcom/tikilive/ui/model/Package$Period;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/tikilive/ui/model/Package;->period:Lcom/tikilive/ui/model/Package$Period;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/tikilive/ui/model/Package;->price:D

    return-void
.end method

.method public setRecurring(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/tikilive/ui/model/Package;->recurring:Z

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tikilive/ui/model/Package;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/tikilive/ui/model/Package$Type;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/tikilive/ui/model/Package;->type:Lcom/tikilive/ui/model/Package$Type;

    return-void
.end method
