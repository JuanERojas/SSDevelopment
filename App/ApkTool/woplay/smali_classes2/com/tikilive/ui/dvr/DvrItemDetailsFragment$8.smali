.class Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$8;
.super Ljava/lang/Object;
.source "DvrItemDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->renderOtherDvrItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$8;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$8;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$700(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v0

    long-to-int p1, v0

    .line 437
    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->newInstance(I)Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$8;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 439
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 440
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 441
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
