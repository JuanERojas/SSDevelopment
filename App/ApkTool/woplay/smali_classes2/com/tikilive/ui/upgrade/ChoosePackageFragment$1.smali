.class Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;
.super Ljava/lang/Object;
.source "ChoosePackageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageAdapter;->getItem(I)Lcom/tikilive/ui/model/Package;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageFragment$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageFragment;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageFragment;)Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->onPackageSelected(Lcom/tikilive/ui/model/Package;)V

    return-void
.end method
