.class public Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/account/DeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeviceAction:Landroid/widget/Button;

.field mDeviceId:Landroid/widget/TextView;

.field mDeviceLastUpdated:Landroid/widget/TextView;

.field mDeviceName:Landroid/widget/TextView;

.field mDevicePrimaryLabel:Landroid/widget/TextView;

.field mDeviceType:Landroid/widget/ImageView;

.field mUsedStatus:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tikilive/ui/account/DeviceAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter;Landroid/view/View;)V
    .locals 1

    .line 328
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    .line 330
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00c6

    .line 332
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    const v0, 0x7f0a00be

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceId:Landroid/widget/TextView;

    const v0, 0x7f0a00c4

    .line 334
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceName:Landroid/widget/TextView;

    const v0, 0x7f0a00c5

    .line 335
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDevicePrimaryLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00bf

    .line 336
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceLastUpdated:Landroid/widget/TextView;

    const v0, 0x7f0a00bc

    .line 337
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceAction:Landroid/widget/Button;

    .line 338
    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$300(Lcom/tikilive/ui/account/DeviceAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0a00c7

    .line 339
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mUsedStatus:Landroid/widget/TextView;

    :cond_0
    return-void
.end method
