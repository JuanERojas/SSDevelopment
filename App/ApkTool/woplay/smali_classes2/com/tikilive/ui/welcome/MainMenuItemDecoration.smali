.class public Lcom/tikilive/ui/welcome/MainMenuItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MainMenuItemDecoration.java"


# instance fields
.field private final mSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    iput p1, p0, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 19
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    const/4 p4, 0x0

    if-nez p2, :cond_1

    .line 28
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 29
    iget p2, p0, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    .line 33
    iget p2, p0, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 38
    :cond_2
    iget p2, p0, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 39
    iget p2, p0, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
