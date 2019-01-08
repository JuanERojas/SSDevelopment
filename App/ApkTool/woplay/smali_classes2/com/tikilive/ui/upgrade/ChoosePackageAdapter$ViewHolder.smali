.class public Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChoosePackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mPackageChannels:Landroid/support/v7/widget/RecyclerView;

.field public mPackageDescription:Landroid/widget/TextView;

.field public mPackagePrice:Landroid/widget/TextView;

.field public mPackageTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;Landroid/view/View;)V
    .locals 2

    .line 102
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01fe

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01fb

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackagePrice:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageDescription:Landroid/widget/TextView;

    const v0, 0x7f0a01f7

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageChannels:Landroid/support/v7/widget/RecyclerView;

    .line 110
    new-instance p2, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, v0, v1}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 111
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageChannels:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object p2, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageChannels:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701fc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, p1}, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 113
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter$ViewHolder;->mPackageChannels:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method
