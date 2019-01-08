.class public Lcom/tikilive/ui/welcome/MainMenuItem;
.super Ljava/lang/Object;
.source "MainMenuItem.java"


# instance fields
.field private androidAmazon:Z

.field private androidGooglePlay:Z

.field private androidPackageId:Ljava/lang/String;

.field private androidSTB:Z

.field private icon:Ljava/lang/String;

.field private iconCustom:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private target:Ljava/lang/String;

.field private targetId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->iconCustom:Z

    const-string v1, ""

    .line 14
    iput-object v1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidPackageId:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidGooglePlay:Z

    .line 16
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidSTB:Z

    .line 17
    iput-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidAmazon:Z

    .line 20
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidPackageId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->targetId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAndroidAmazon()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidAmazon:Z

    return v0
.end method

.method public isAndroidGooglePlay()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidGooglePlay:Z

    return v0
.end method

.method public isAndroidSTB()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidSTB:Z

    return v0
.end method

.method public isIconCustom()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->iconCustom:Z

    return v0
.end method

.method public setAndroidAmazon(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidAmazon:Z

    return-void
.end method

.method public setAndroidGooglePlay(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidGooglePlay:Z

    return-void
.end method

.method public setAndroidPackageId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidPackageId:Ljava/lang/String;

    return-void
.end method

.method public setAndroidSTB(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->androidSTB:Z

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIconCustom(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->iconCustom:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetId(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->targetId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuItem;->title:Ljava/lang/String;

    return-void
.end method
