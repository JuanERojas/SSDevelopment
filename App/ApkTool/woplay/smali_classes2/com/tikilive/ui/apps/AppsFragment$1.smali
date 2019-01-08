.class Lcom/tikilive/ui/apps/AppsFragment$1;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$total:I

.field final synthetic val$totalText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/apps/AppsFragment;Ljava/lang/String;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    iput-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->val$totalText:Ljava/lang/String;

    iput p3, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/apps/AppsFragment;->access$000(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->val$totalText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/apps/AppsFragment;->access$100(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 103
    iget-object v2, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-virtual {v2}, Lcom/tikilive/ui/apps/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100003

    iget v4, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->val$total:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget v0, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->val$total:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/tikilive/ui/apps/AppsFragment$1;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {v1}, Lcom/tikilive/ui/apps/AppsFragment;->access$000(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
