.class public Lcom/tikilive/ui/model/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/model/Device$UsedStatus;,
        Lcom/tikilive/ui/model/Device$Type;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private type:Lcom/tikilive/ui/model/Device$Type;

.field private updated:I

.field private usedStatus:Lcom/tikilive/ui/model/Device$UsedStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/tikilive/ui/model/Device$Type;->UNKNOWN:Lcom/tikilive/ui/model/Device$Type;

    iput-object v0, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    .line 27
    sget-object v0, Lcom/tikilive/ui/model/Device$UsedStatus;->NOT_IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    iput-object v0, p0, Lcom/tikilive/ui/model/Device;->usedStatus:Lcom/tikilive/ui/model/Device$UsedStatus;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/tikilive/ui/model/Device$Type;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    return-object v0
.end method

.method public getUpdated()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/tikilive/ui/model/Device;->updated:I

    return v0
.end method

.method public getUsedStatus()Lcom/tikilive/ui/model/Device$UsedStatus;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->usedStatus:Lcom/tikilive/ui/model/Device$UsedStatus;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->serialNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/model/Device;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->name:Ljava/lang/String;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/tikilive/ui/model/Device$Type;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android_stb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "hisense"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "html5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "roku"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 80
    sget-object p1, Lcom/tikilive/ui/model/Device$Type;->UNKNOWN:Lcom/tikilive/ui/model/Device$Type;

    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    goto :goto_2

    .line 76
    :pswitch_0
    sget-object p1, Lcom/tikilive/ui/model/Device$Type;->ROKU:Lcom/tikilive/ui/model/Device$Type;

    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    goto :goto_2

    .line 73
    :pswitch_1
    sget-object p1, Lcom/tikilive/ui/model/Device$Type;->HTML5:Lcom/tikilive/ui/model/Device$Type;

    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    goto :goto_2

    .line 70
    :pswitch_2
    sget-object p1, Lcom/tikilive/ui/model/Device$Type;->HISENSE:Lcom/tikilive/ui/model/Device$Type;

    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    goto :goto_2

    .line 67
    :pswitch_3
    sget-object p1, Lcom/tikilive/ui/model/Device$Type;->ANDROID_STB:Lcom/tikilive/ui/model/Device$Type;

    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    goto :goto_2

    .line 64
    :pswitch_4
    sget-object p1, Lcom/tikilive/ui/model/Device$Type;->ANDROID:Lcom/tikilive/ui/model/Device$Type;

    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->type:Lcom/tikilive/ui/model/Device$Type;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3357c991 -> :sswitch_5
        -0x10fa53b6 -> :sswitch_4
        0x358067 -> :sswitch_3
        0x5efedea -> :sswitch_2
        0x37390f4d -> :sswitch_1
        0x37e65451 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUpdated(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/tikilive/ui/model/Device;->updated:I

    return-void
.end method

.method public setUsedStatus(Lcom/tikilive/ui/model/Device$UsedStatus;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/tikilive/ui/model/Device;->usedStatus:Lcom/tikilive/ui/model/Device$UsedStatus;

    return-void
.end method
