.class Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;
.super Ljava/lang/Object;
.source "ArrayObjectAdapter.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->setItems(Ljava/util/List;Landroid/support/v17/leanback/widget/DiffCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/ArrayObjectAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2

    .line 314
    invoke-static {}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onChanged"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 2

    .line 290
    invoke-static {}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onInserted"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 306
    invoke-static {}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onMoved"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    .line 298
    invoke-static {}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onRemoved"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
