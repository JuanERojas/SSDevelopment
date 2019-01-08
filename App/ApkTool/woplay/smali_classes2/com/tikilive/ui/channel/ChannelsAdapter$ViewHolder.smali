.class public Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChannelsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mChannelDescription:Landroid/widget/TextView;

.field public mChannelImage:Landroid/widget/ImageView;

.field public mChannelTitle:Landroid/widget/TextView;

.field public mChannelTypeCatchUp:Landroid/widget/TextView;

.field public mChannelTypeLive:Landroid/widget/TextView;

.field public mChannelTypeRadio:Landroid/widget/TextView;

.field public mChannelTypeSling:Landroid/widget/TextView;

.field public mChannelTypeTve:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelsAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/channel/ChannelsAdapter;Landroid/view/View;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/channel/ChannelsAdapter;

    .line 129
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a007c

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0076

    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    const p1, 0x7f0a0071

    .line 132
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelDescription:Landroid/widget/TextView;

    const p1, 0x7f0a029b

    .line 133
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeLive:Landroid/widget/TextView;

    const p1, 0x7f0a029c

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeRadio:Landroid/widget/TextView;

    const p1, 0x7f0a0299

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeCatchUp:Landroid/widget/TextView;

    const p1, 0x7f0a029e

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeTve:Landroid/widget/TextView;

    const p1, 0x7f0a029d

    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelsAdapter$ViewHolder;->mChannelTypeSling:Landroid/widget/TextView;

    return-void
.end method
