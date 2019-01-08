.class Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->populateSearchResults(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$8;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$8;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$800(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$8;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$800(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
