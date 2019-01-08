.class public Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MainMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/welcome/MainMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/welcome/MainMenuAdapter;Landroid/view/View;)V
    .locals 3

    .line 88
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    .line 89
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a030f

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a014b

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$000(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    new-instance v0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;-><init>(Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;Lcom/tikilive/ui/welcome/MainMenuAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    new-instance v0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;-><init>(Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;Lcom/tikilive/ui/welcome/MainMenuAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
