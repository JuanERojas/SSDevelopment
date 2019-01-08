.class public Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/account/PackageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mPackageDescription:Landroid/widget/TextView;

.field mPackageImage:Landroid/widget/ImageView;

.field mPackagePrice:Landroid/widget/TextView;

.field mPackageTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tikilive/ui/account/PackageAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/account/PackageAdapter;Landroid/view/View;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/account/PackageAdapter;

    .line 115
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01fa

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageTitle:Landroid/widget/TextView;

    const p1, 0x7f0a01fc

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageImage:Landroid/widget/ImageView;

    const p1, 0x7f0a01f9

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    const p1, 0x7f0a01fb

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/account/PackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    return-void
.end method
