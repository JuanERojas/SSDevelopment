.class Lcom/tikilive/ui/upgrade/PackageDetailsFragment$2;
.super Ljava/lang/Object;
.source "PackageDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 195
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$2;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$2;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$100(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)V

    .line 199
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/PackageDetailsFragment$2;->this$0:Lcom/tikilive/ui/upgrade/PackageDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/upgrade/PackageDetailsFragment;->access$200(Lcom/tikilive/ui/upgrade/PackageDetailsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
