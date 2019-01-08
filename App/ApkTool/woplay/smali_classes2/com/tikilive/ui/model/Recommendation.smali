.class public Lcom/tikilive/ui/model/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"


# instance fields
.field private actionId:I

.field private actionTarget:Ljava/lang/String;

.field private coverImage:Ljava/lang/String;

.field private textIcon:Ljava/lang/String;

.field private textLarge:Ljava/lang/String;

.field private textSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tikilive/ui/model/Recommendation;->actionId:I

    return v0
.end method

.method public getActionTarget()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tikilive/ui/model/Recommendation;->actionTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tikilive/ui/model/Recommendation;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTextIcon()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tikilive/ui/model/Recommendation;->textIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLarge()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tikilive/ui/model/Recommendation;->textLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSmall()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tikilive/ui/model/Recommendation;->textSmall:Ljava/lang/String;

    return-object v0
.end method

.method public setActionId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/tikilive/ui/model/Recommendation;->actionId:I

    return-void
.end method

.method public setActionTarget(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tikilive/ui/model/Recommendation;->actionTarget:Ljava/lang/String;

    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tikilive/ui/model/Recommendation;->coverImage:Ljava/lang/String;

    return-void
.end method

.method public setTextIcon(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tikilive/ui/model/Recommendation;->textIcon:Ljava/lang/String;

    return-void
.end method

.method public setTextLarge(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tikilive/ui/model/Recommendation;->textLarge:Ljava/lang/String;

    return-void
.end method

.method public setTextSmall(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tikilive/ui/model/Recommendation;->textSmall:Ljava/lang/String;

    return-void
.end method
