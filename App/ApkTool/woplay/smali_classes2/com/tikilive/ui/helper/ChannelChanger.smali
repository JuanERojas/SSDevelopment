.class public Lcom/tikilive/ui/helper/ChannelChanger;
.super Ljava/lang/Object;
.source "ChannelChanger.java"


# instance fields
.field private hundredsDigit:I

.field private tensDigit:I

.field private thousandsDigit:I

.field private unitsDigit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    .line 11
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    .line 12
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    .line 13
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    return-void
.end method


# virtual methods
.method public getRequestedChannelNumber()I
    .locals 2

    .line 58
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 59
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    .line 61
    :cond_0
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    if-lez v0, :cond_1

    .line 62
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v1, v0

    .line 64
    :cond_1
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    if-lez v0, :cond_2

    .line 65
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    .line 67
    :cond_2
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    if-lez v0, :cond_3

    .line 68
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public getRequestedChannelNumberFormatted()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 78
    iget v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    iget v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    if-le v1, v2, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_1
    iget v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    if-le v1, v2, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 91
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_2
    iget v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    if-le v1, v2, :cond_3

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 96
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public handle(I)V
    .locals 2

    if-ltz p1, :cond_5

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 22
    iput p1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    goto :goto_0

    .line 23
    :cond_1
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    if-ne v0, v1, :cond_2

    .line 24
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    .line 25
    iput p1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    goto :goto_0

    .line 26
    :cond_2
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    if-ne v0, v1, :cond_3

    .line 27
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    .line 28
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    .line 29
    iput p1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    goto :goto_0

    .line 30
    :cond_3
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    if-ne v0, v1, :cond_4

    .line 31
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    .line 32
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    .line 33
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    .line 34
    iput p1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    goto :goto_0

    .line 36
    :cond_4
    iput p1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    .line 37
    iput v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    .line 38
    iput v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    .line 39
    iput v1, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    :goto_0
    return-void

    .line 18
    :cond_5
    :goto_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Invalid digit"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isComplete()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->thousandsDigit:I

    .line 45
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->hundredsDigit:I

    .line 46
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->tensDigit:I

    .line 47
    iput v0, p0, Lcom/tikilive/ui/helper/ChannelChanger;->unitsDigit:I

    return-void
.end method
