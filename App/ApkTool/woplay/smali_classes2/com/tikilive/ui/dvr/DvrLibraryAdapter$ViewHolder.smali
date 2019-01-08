.class public Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DvrLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/dvr/DvrLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDvrItemDetails:Landroid/widget/TextView;

.field public mDvrItemImage:Landroid/widget/ImageView;

.field public mDvrItemProgress:Landroid/widget/ProgressBar;

.field public mDvrItemTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00d0

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00cf

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemImage:Landroid/widget/ImageView;

    const v0, 0x7f0a00ce

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemDetails:Landroid/widget/TextView;

    const v0, 0x7f0a024b

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemProgress:Landroid/widget/ProgressBar;

    return-void
.end method
