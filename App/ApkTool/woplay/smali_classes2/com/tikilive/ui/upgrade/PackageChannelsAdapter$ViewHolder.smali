.class public Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackageChannelsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mChannelImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/upgrade/PackageChannelsAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0076

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageChannelsAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    return-void
.end method
