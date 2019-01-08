.class public Lcom/tikilive/ui/model/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/model/Annotation$Type;
    }
.end annotation


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final POSITION_X:Ljava/lang/String; = "position_x"

.field public static final POSITION_Y:Ljava/lang/String; = "position_y"

.field public static final START:Ljava/lang/String; = "start"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private duration:I

.field private positionX:I

.field private positionY:I

.field private start:I

.field private title:Ljava/lang/String;

.field private type:Lcom/tikilive/ui/model/Annotation$Type;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/tikilive/ui/model/Annotation;->positionX:I

    .line 26
    iput v0, p0, Lcom/tikilive/ui/model/Annotation;->positionY:I

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/tikilive/ui/model/Annotation;->duration:I

    return v0
.end method

.method public getPositionX()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/tikilive/ui/model/Annotation;->positionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/tikilive/ui/model/Annotation;->positionY:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/tikilive/ui/model/Annotation;->start:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tikilive/ui/model/Annotation;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/tikilive/ui/model/Annotation$Type;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tikilive/ui/model/Annotation;->type:Lcom/tikilive/ui/model/Annotation$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tikilive/ui/model/Annotation;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/tikilive/ui/model/Annotation;->duration:I

    return-void
.end method

.method public setPositionX(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/tikilive/ui/model/Annotation;->positionX:I

    return-void
.end method

.method public setPositionY(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/tikilive/ui/model/Annotation;->positionY:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/tikilive/ui/model/Annotation;->start:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tikilive/ui/model/Annotation;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/tikilive/ui/model/Annotation$Type;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tikilive/ui/model/Annotation;->type:Lcom/tikilive/ui/model/Annotation$Type;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tikilive/ui/model/Annotation;->url:Ljava/lang/String;

    return-void
.end method
