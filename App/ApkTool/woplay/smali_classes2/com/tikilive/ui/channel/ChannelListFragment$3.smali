.class Lcom/tikilive/ui/channel/ChannelListFragment$3;
.super Ljava/lang/Object;
.source "ChannelListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

.field final synthetic val$total:I

.field final synthetic val$totalText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelListFragment;Ljava/lang/String;I)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->val$totalText:Ljava/lang/String;

    iput p3, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 156
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$000(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->val$totalText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$100(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 159
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100004

    iget v2, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->val$total:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->val$total:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment$3;->this$0:Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelListFragment;->access$000(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
