.class Lcom/tikilive/ui/apps/AppsFragment$3;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/apps/AppsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/apps/AppsFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/apps/AppsFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment$3;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$3;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/apps/AppsFragment;->access$100(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$3;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/apps/AppsFragment;->access$100(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
