.class public Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackageDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/upgrade/PackageDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlankViewHolder"
.end annotation


# instance fields
.field public mCategoryImage:Landroid/widget/ImageView;

.field public mCategoryTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01e2

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01e0

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;->mCategoryImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;
    .locals 3

    .line 118
    new-instance v0, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d00ba

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tikilive/ui/upgrade/PackageDetailsAdapter$BlankViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
