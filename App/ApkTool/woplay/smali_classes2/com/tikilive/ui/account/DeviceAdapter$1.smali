.class Lcom/tikilive/ui/account/DeviceAdapter$1;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/DeviceAdapter;->onBindViewHolder(Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/DeviceAdapter;

.field final synthetic val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter;Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    iput-object p2, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 158
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$000(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$000(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object p2, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p2}, Lcom/tikilive/ui/account/DeviceAdapter;->access$100(Lcom/tikilive/ui/account/DeviceAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    .line 162
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$000(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/account/DeviceAdapter$1;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p2}, Lcom/tikilive/ui/account/DeviceAdapter;->access$100(Lcom/tikilive/ui/account/DeviceAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
