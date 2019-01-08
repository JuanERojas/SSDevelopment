.class Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$9;
.super Ljava/lang/Object;
.source "DvrLibraryActivityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->reloadCurrentTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$9;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$9;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-static {v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->access$400(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v0

    long-to-int p1, v0

    .line 312
    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->newInstance(I)Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$9;->this$0:Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 314
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 315
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 316
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
