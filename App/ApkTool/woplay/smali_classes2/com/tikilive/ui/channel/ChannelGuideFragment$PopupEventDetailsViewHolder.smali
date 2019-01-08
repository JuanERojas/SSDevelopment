.class Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupEventDetailsViewHolder"
.end annotation


# instance fields
.field mPopupEventActionButton:Landroid/widget/Button;

.field mPopupEventChannelThumb:Landroid/widget/ImageView;

.field mPopupEventChannelTitle:Landroid/widget/TextView;

.field mPopupEventCloseButton:Landroid/widget/Button;

.field mPopupEventContainer:Landroid/widget/LinearLayout;

.field mPopupEventDescription:Landroid/widget/TextView;

.field mPopupEventLaunchButton:Landroid/widget/Button;

.field mPopupEventProgress:Landroid/widget/ProgressBar;

.field mPopupEventProgressDelimiter:Landroid/widget/TextView;

.field mPopupEventTimelineDelimiter:Landroid/widget/TextView;

.field mPopupEventTimelineEnd:Landroid/widget/TextView;

.field mPopupEventTimelineMiddle:Landroid/widget/TextView;

.field mPopupEventTimelineStart:Landroid/widget/TextView;

.field mPopupEventTitle:Landroid/widget/TextView;

.field mPopupLabelAdult:Landroid/widget/TextView;

.field mPopupLabelCatchupTv:Landroid/widget/TextView;

.field mPopupLabelHd:Landroid/widget/TextView;

.field mPopupLabelLive:Landroid/widget/TextView;

.field mPopupLabelRadio:Landroid/widget/TextView;

.field mPopupLabelSling:Landroid/widget/TextView;

.field mPopupLabelTve:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0227

    .line 1685
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0224

    .line 1686
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventChannelThumb:Landroid/widget/ImageView;

    const v0, 0x7f0a0231

    .line 1687
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0225

    .line 1688
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventChannelTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0230

    .line 1689
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineStart:Landroid/widget/TextView;

    const v0, 0x7f0a022e

    .line 1690
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineEnd:Landroid/widget/TextView;

    const v0, 0x7f0a022f

    .line 1691
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineMiddle:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    .line 1692
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineDelimiter:Landroid/widget/TextView;

    const v0, 0x7f0a022b

    .line 1693
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a022c

    .line 1694
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventProgressDelimiter:Landroid/widget/TextView;

    const v0, 0x7f0a0229

    .line 1695
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventDescription:Landroid/widget/TextView;

    const v0, 0x7f0a022a

    .line 1696
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventLaunchButton:Landroid/widget/Button;

    const v0, 0x7f0a0223

    .line 1697
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventActionButton:Landroid/widget/Button;

    const v0, 0x7f0a0226

    .line 1698
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventCloseButton:Landroid/widget/Button;

    const v0, 0x7f0a0235

    .line 1700
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelLive:Landroid/widget/TextView;

    const v0, 0x7f0a0236

    .line 1701
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelRadio:Landroid/widget/TextView;

    const v0, 0x7f0a0238

    .line 1702
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelTve:Landroid/widget/TextView;

    const v0, 0x7f0a0237

    .line 1703
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelSling:Landroid/widget/TextView;

    const v0, 0x7f0a0233

    .line 1704
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelCatchupTv:Landroid/widget/TextView;

    const v0, 0x7f0a0232

    .line 1705
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelAdult:Landroid/widget/TextView;

    const v0, 0x7f0a0234

    .line 1706
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelHd:Landroid/widget/TextView;

    return-void
.end method
