.class public Lcom/tikilive/ui/model/VideoCategory;
.super Ljava/lang/Object;
.source "VideoCategory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/tikilive/ui/model/VideoCategory;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryCount:I

.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private videoCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/tikilive/ui/model/VideoCategory;->id:I

    .line 15
    iput-object p2, p0, Lcom/tikilive/ui/model/VideoCategory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tikilive/ui/model/VideoCategory;)I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tikilive/ui/model/VideoCategory;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/VideoCategory;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/tikilive/ui/model/VideoCategory;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/VideoCategory;->compareTo(Lcom/tikilive/ui/model/VideoCategory;)I

    move-result p1

    return p1
.end method

.method public getCategoryCount()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/tikilive/ui/model/VideoCategory;->categoryCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tikilive/ui/model/VideoCategory;->id:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tikilive/ui/model/VideoCategory;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tikilive/ui/model/VideoCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/tikilive/ui/model/VideoCategory;->videoCount:I

    return v0
.end method

.method public setCategoryCount(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/tikilive/ui/model/VideoCategory;->categoryCount:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/tikilive/ui/model/VideoCategory;->id:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tikilive/ui/model/VideoCategory;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tikilive/ui/model/VideoCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public setVideoCount(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/tikilive/ui/model/VideoCategory;->videoCount:I

    return-void
.end method
