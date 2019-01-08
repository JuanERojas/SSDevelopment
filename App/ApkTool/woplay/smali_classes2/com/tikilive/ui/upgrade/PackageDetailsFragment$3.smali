.class Lcom/tikilive/ui/upgrade/PackageDetailsFragment$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PackageDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$3;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$3;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$100(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V

    return-void
.end method
