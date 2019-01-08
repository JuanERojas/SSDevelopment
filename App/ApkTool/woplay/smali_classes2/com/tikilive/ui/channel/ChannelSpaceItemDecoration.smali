.class public Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ChannelSpaceItemDecoration.java"


# instance fields
.field private final mSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    iput p1, p0, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 19
    iget p2, p0, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 20
    iget p2, p0, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 21
    iget p2, p0, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;->mSpace:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
