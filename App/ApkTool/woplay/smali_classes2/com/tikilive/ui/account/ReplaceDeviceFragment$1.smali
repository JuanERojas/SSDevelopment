.class Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ReplaceDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/ReplaceDeviceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/ReplaceDeviceFragment;

.field final synthetic val$adapter:Lcom/tikilive/ui/account/DeviceAdapter;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/ReplaceDeviceFragment;Lcom/tikilive/ui/account/DeviceAdapter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    iput-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->val$adapter:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 84
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    invoke-static {v1}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->access$000(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getTotalDevices()I

    move-result v1

    const v2, 0x7f100002

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->val$adapter:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-virtual {v2}, Lcom/tikilive/ui/account/DeviceAdapter;->getItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    invoke-static {v2}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->access$000(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getTotalDevices()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/tikilive/ui/account/ReplaceDeviceFragment$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceFragment;

    invoke-static {v1}, Lcom/tikilive/ui/account/ReplaceDeviceFragment;->access$100(Lcom/tikilive/ui/account/ReplaceDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
