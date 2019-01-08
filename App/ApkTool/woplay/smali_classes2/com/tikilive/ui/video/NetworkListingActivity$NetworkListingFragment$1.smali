.class Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;
.super Ljava/lang/Object;
.source "NetworkListingActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

.field final synthetic val$hasCategories:Z

.field final synthetic val$hasVideos:Z

.field final synthetic val$headerCounter:Landroid/widget/TextView;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$total:I

.field final synthetic val$totalText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;ZZI)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    iput-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$headerCounter:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$totalText:Ljava/lang/String;

    iput-object p4, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-boolean p5, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$hasCategories:Z

    iput-boolean p6, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$hasVideos:Z

    iput p7, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 399
    iget-object p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$headerCounter:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$totalText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 403
    iget-boolean v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$hasCategories:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$hasVideos:Z

    if-nez v0, :cond_1

    const v0, 0x7f100006

    goto :goto_0

    .line 405
    :cond_1
    iget-boolean v0, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$hasCategories:Z

    if-nez v0, :cond_2

    const v0, 0x7f100008

    goto :goto_0

    :cond_2
    const v0, 0x7f100005

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->this$0:Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$total:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$total:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/tikilive/ui/video/NetworkListingActivity$NetworkListingFragment$1;->val$headerCounter:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
