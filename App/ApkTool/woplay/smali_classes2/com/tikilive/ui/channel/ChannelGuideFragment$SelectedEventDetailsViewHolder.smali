.class Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectedEventDetailsViewHolder"
.end annotation


# instance fields
.field public mSelectedEventChannelTitle:Landroid/widget/TextView;

.field public mSelectedEventContainer:Landroid/widget/LinearLayout;

.field public mSelectedEventDescription:Landroid/widget/TextView;

.field public mSelectedEventProgress:Landroid/widget/ProgressBar;

.field public mSelectedEventProgressDelimiter:Landroid/widget/TextView;

.field public mSelectedEventTimelineDelimiter:Landroid/widget/TextView;

.field public mSelectedEventTimelineEnd:Landroid/widget/TextView;

.field public mSelectedEventTimelineMiddle:Landroid/widget/TextView;

.field public mSelectedEventTimelineStart:Landroid/widget/TextView;

.field public mSelectedEventTitle:Landroid/widget/TextView;

.field public mSelectedLabelAdult:Landroid/widget/TextView;

.field public mSelectedLabelCatchupTv:Landroid/widget/TextView;

.field public mSelectedLabelHd:Landroid/widget/TextView;

.field public mSelectedLabelLive:Landroid/widget/TextView;

.field public mSelectedLabelRadio:Landroid/widget/TextView;

.field public mSelectedLabelSling:Landroid/widget/TextView;

.field public mSelectedLabelTve:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a028f

    .line 1639
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0297

    .line 1640
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTitle:Landroid/widget/TextView;

    const v0, 0x7f0a028e

    .line 1641
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventChannelTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0296

    .line 1642
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineStart:Landroid/widget/TextView;

    const v0, 0x7f0a0294

    .line 1643
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineEnd:Landroid/widget/TextView;

    const v0, 0x7f0a0295

    .line 1644
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineMiddle:Landroid/widget/TextView;

    const v0, 0x7f0a0293

    .line 1645
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineDelimiter:Landroid/widget/TextView;

    const v0, 0x7f0a0291

    .line 1646
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0292

    .line 1647
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgressDelimiter:Landroid/widget/TextView;

    const v0, 0x7f0a0290

    .line 1648
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventDescription:Landroid/widget/TextView;

    const v0, 0x7f0a029b

    .line 1650
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelLive:Landroid/widget/TextView;

    const v0, 0x7f0a029c

    .line 1651
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelRadio:Landroid/widget/TextView;

    const v0, 0x7f0a029e

    .line 1652
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelTve:Landroid/widget/TextView;

    const v0, 0x7f0a029d

    .line 1653
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelSling:Landroid/widget/TextView;

    const v0, 0x7f0a0299

    .line 1654
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelCatchupTv:Landroid/widget/TextView;

    const v0, 0x7f0a0298

    .line 1655
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelAdult:Landroid/widget/TextView;

    const v0, 0x7f0a029a

    .line 1656
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelHd:Landroid/widget/TextView;

    return-void
.end method
