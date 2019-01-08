.class public Lcom/tikilive/ui/apps/AppsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/apps/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppIcon:Landroid/widget/ImageView;

.field mAppLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tikilive/ui/apps/AppsAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/apps/AppsAdapter;Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/apps/AppsAdapter;

    .line 84
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0037

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsAdapter$ViewHolder;->mAppLabel:Landroid/widget/TextView;

    const p1, 0x7f0a0036

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    return-void
.end method
