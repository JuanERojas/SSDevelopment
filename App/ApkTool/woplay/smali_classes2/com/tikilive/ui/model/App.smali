.class public Lcom/tikilive/ui/model/App;
.super Ljava/lang/Object;
.source "App.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/CharSequence;

.field private name:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tikilive/ui/model/App;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tikilive/ui/model/App;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tikilive/ui/model/App;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tikilive/ui/model/App;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/tikilive/ui/model/App;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tikilive/ui/model/App;->name:Ljava/lang/CharSequence;

    return-void
.end method
