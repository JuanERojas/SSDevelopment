.class public Lcom/tikilive/ui/channel/ChannelGuideFragment;
.super Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;,
        Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;,
        Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.channel.ChannelGuideFragment"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mChannelGuideUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mCurrentTimeMarker:Landroid/widget/ImageView;

.field private mCurrentTimeMarkerHandler:Landroid/os/Handler;

.field private mCurrentTimeMarkerOffset:I

.field private mCurrentTimeMarkerUpdater:Ljava/lang/Runnable;

.field private mFrom:I

.field private mGrid:Landroid/widget/LinearLayout;

.field private mInitialDynamicViewId:I

.field private mIsPopupOpened:Z

.field private mListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

.field private mMinFromDate:Ljava/util/Date;

.field private mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

.field private mPreviewPlayerChannelTitle:Landroid/widget/TextView;

.field private mRadioSongChanged:Landroid/content/BroadcastReceiver;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedFocusFirst:Z

.field private mRequestedFocusPosition:I

.field private mRequestedScrollPosition:I

.field private mSelectedEventDetailsTimer:Ljava/util/Timer;

.field private mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

.field private mSocialBroadcasts:Z

.field private mSubscrRequired:Landroid/widget/FrameLayout;

.field private mSubscrRequiredSubtitle:Landroid/widget/TextView;

.field private mSubscrRequiredTitle:Landroid/widget/TextView;

.field private mTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;-><init>()V

    .line 85
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$1;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerUpdater:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    .line 120
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedScrollPosition:I

    .line 121
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusPosition:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusFirst:Z

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSocialBroadcasts:Z

    .line 126
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mIsPopupOpened:Z

    .line 128
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mInitialDynamicViewId:I

    .line 130
    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelGuideUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$3;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRadioSongChanged:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->updateCurrentTimeMarker()V

    return-void
.end method

.method static synthetic access$100(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/channel/ChannelGuideFragment;II)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/channel/ChannelGuideFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->doOnChannelGuideSelectedEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/tikilive/ui/channel/ChannelGuideFragment;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mIsPopupOpened:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/backend/Api;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mInitialDynamicViewId:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    return p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    return p0
.end method

.method static synthetic access$600(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/model/ChannelProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->updateCurrentChannelImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/tikilive/ui/channel/ChannelGuideFragment;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToChannelNumber(I)V

    return-void
.end method

.method private cursorToEvent(Landroid/database/Cursor;)Lcom/tikilive/ui/model/Event;
    .locals 8

    .line 697
    new-instance v0, Lcom/tikilive/ui/model/Event;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/tikilive/ui/model/Event;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 698
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tikilive/ui/model/Event;->setDescription(Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 699
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tikilive/ui/model/Event;->setStart(I)V

    const/4 v5, 0x5

    .line 700
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/tikilive/ui/model/Event;->setDuration(I)V

    const/4 v4, 0x6

    .line 701
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tikilive/ui/model/Event;->setImageUrl(Ljava/lang/String;)V

    const/4 v4, 0x7

    .line 702
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/tikilive/ui/model/Event;->setPpv(Z)V

    const/16 v4, 0x8

    .line 703
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Lcom/tikilive/ui/model/Event;->setTicket(Z)V

    const/16 v4, 0x9

    .line 704
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v4, -0x1

    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4c696bc3

    if-eq v6, v7, :cond_5

    const v2, -0x28af7669

    if-eq v6, v2, :cond_4

    const v1, -0x28273f8e

    if-eq v6, v1, :cond_3

    const v1, 0x3b387df1

    if-eq v6, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "recording"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "finished"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    const-string v2, "pending"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_5
    const-string v1, "failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 720
    sget-object p1, Lcom/tikilive/ui/model/EventDvrStatus;->NONE:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    goto :goto_4

    .line 717
    :pswitch_0
    sget-object p1, Lcom/tikilive/ui/model/EventDvrStatus;->FAILED:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    goto :goto_4

    .line 714
    :pswitch_1
    sget-object p1, Lcom/tikilive/ui/model/EventDvrStatus;->READY:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    goto :goto_4

    .line 711
    :pswitch_2
    sget-object p1, Lcom/tikilive/ui/model/EventDvrStatus;->RECORDING:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    goto :goto_4

    .line 708
    :pswitch_3
    sget-object p1, Lcom/tikilive/ui/model/EventDvrStatus;->PENDING:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    :cond_7
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOnChannelGuideSelectedEvent(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V
    .locals 6

    const v0, 0x7f0a024a

    .line 761
    invoke-virtual {p6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 764
    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    iget p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    const/4 v1, 0x0

    if-eq p6, p5, :cond_5

    .line 774
    iget-object p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p6, p5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p6

    check-cast p6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    const/4 v2, 0x1

    if-eqz p6, :cond_2

    .line 776
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {v3, p5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->getChannelAtPosition(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 778
    invoke-virtual {p5}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p5}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p5}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x1

    :goto_1
    invoke-virtual {p6, v1, p5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->markChannelSelected(ZZ)V

    .line 781
    :cond_2
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    invoke-virtual {p5, p6}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p5

    check-cast p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    if-eqz p5, :cond_5

    .line 783
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result p6

    if-nez p6, :cond_4

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result p6

    if-nez p6, :cond_4

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result p6

    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    const/4 p6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p6, 0x1

    :goto_3
    invoke-virtual {p5, v2, p6}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->markChannelSelected(ZZ)V

    .line 787
    :cond_5
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p5

    const p6, 0x7f1201b1

    if-eqz p5, :cond_7

    .line 791
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getGenre()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_6

    .line 792
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_4

    .line 794
    :cond_7
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    .line 796
    :goto_4
    iget-object p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p6, p6, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v2, p5

    :goto_5
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p6, p6, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object p5

    :cond_9
    invoke-virtual {p6, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventChannelTitle:Landroid/widget/TextView;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventChannelTitle:Landroid/widget/TextView;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p5

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p5

    iget-object p6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p6, p6, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventChannelThumb:Landroid/widget/ImageView;

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 803
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p5

    if-eqz p5, :cond_a

    .line 804
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 814
    :cond_a
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result p5

    if-eqz p5, :cond_b

    .line 815
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 816
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 822
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 825
    :cond_b
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result p5

    if-eqz p5, :cond_c

    .line 826
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 827
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 836
    :cond_c
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isCatchUpTv()Z

    move-result p5

    if-eqz p5, :cond_d

    .line 837
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 848
    :cond_d
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 851
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelLive:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelRadio:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelTve:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelSling:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    :goto_6
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isAdult()Z

    move-result p5

    if-eqz p5, :cond_e

    .line 861
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelAdult:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelAdult:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 864
    :cond_e
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelAdult:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelAdult:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    :goto_7
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isHd()Z

    move-result p5

    if-eqz p5, :cond_f

    .line 869
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelHd:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelHd:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 872
    :cond_f
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedLabelHd:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupLabelHd:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    :goto_8
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 877
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineStart:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineEnd:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineDelimiter:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 882
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgressDelimiter:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventActionButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_a

    .line 886
    :cond_10
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineStart:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineEnd:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineDelimiter:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineStart:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineEnd:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineDelimiter:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineMiddle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    const-wide/16 p5, 0x3e8

    if-eqz p2, :cond_11

    .line 901
    new-instance p3, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result p4

    int-to-long v2, p4

    mul-long v2, v2, p5

    invoke-direct {p3, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 902
    new-instance p4, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v2

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long v2, v2, p5

    invoke-direct {p4, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_9

    .line 904
    :cond_11
    new-instance v2, Ljava/util/Date;

    int-to-long v3, p3

    mul-long v3, v3, p5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 905
    new-instance p3, Ljava/util/Date;

    int-to-long v3, p4

    mul-long v3, v3, p5

    invoke-direct {p3, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object p4, p3

    move-object p3, v2

    .line 908
    :goto_9
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineStart:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineStart:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventTimelineEnd:Landroid/widget/TextView;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventTimelineEnd:Landroid/widget/TextView;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 914
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p5

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, p5, v2

    if-gtz v4, :cond_12

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p5

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, p5, v2

    if-gtz v4, :cond_12

    .line 915
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgressDelimiter:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 917
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p5, p5, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x64

    mul-long v4, v4, v0

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    sub-long v2, v0, p3

    div-long/2addr v4, v2

    long-to-double p3, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    double-to-int p1, p3

    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_a

    .line 920
    :cond_12
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 921
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 922
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventProgressDelimiter:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 924
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 925
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 926
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventProgressDelimiter:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 950
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventActionButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_a
    const-string p1, ""

    if-eqz p2, :cond_13

    .line 957
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object p1

    :cond_13
    if-eqz p1, :cond_14

    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 960
    :cond_14
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f1201b0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 963
    :cond_15
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;->mSelectedEventDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initMinFromDate()Ljava/util/Date;
    .locals 8

    .line 560
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mMinFromDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 561
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 563
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    .line 564
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x5

    .line 565
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xb

    .line 566
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 562
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0x1e

    const/16 v2, 0xc

    .line 570
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 571
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const/16 v1, -0x1e

    .line 572
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 575
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mMinFromDate:Ljava/util/Date;

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mMinFromDate:Ljava/util/Date;

    return-object v0
.end method

.method private moveToChannelNumber(I)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v1, p1}, Lcom/tikilive/ui/model/ChannelProvider;->getByNumber(I)Lcom/tikilive/ui/model/Channel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->getPositionForChannel(Lcom/tikilive/ui/model/Channel;)I

    move-result p1

    .line 527
    invoke-direct {p0, p1, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(II)V

    return-void
.end method

.method private moveToCurrentChannel()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToChannelNumber(I)V

    return-void
.end method

.method private moveToPosition(II)V
    .locals 1

    const/4 v0, 0x1

    .line 556
    invoke-direct {p0, p1, p2, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(IIZ)V

    return-void
.end method

.method private moveToPosition(IIZ)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 532
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    if-eqz p1, :cond_0

    .line 534
    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;

    invoke-direct {v0, p0, p2, p3}, Lcom/tikilive/ui/channel/ChannelGuideFragment$12;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Z)Lcom/tikilive/ui/channel/ChannelGuideFragment;
    .locals 3

    .line 185
    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;-><init>()V

    .line 187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "social_broadcasts"

    .line 188
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateCurrentChannelImage()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRadioPlayer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getCurrentEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 338
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$9;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$9;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    .line 344
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_2
    return-void
.end method

.method private updateCurrentTimeMarker()V
    .locals 4

    .line 441
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 442
    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    if-gt v1, v0, :cond_2

    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerOffset:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerOffset:I

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerOffset:I

    sub-int/2addr v1, v3

    .line 456
    iget v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    sub-int/2addr v0, v3

    mul-int v0, v0, v1

    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    iget v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    sub-int/2addr v1, v3

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 458
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarker:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarker:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void

    .line 443
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarker:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    if-le v0, v1, :cond_3

    .line 446
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->loadNextInterval()V

    :cond_3
    return-void
.end method


# virtual methods
.method public changeChannel()V
    .locals 0

    .line 322
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->changeChannel()V

    .line 323
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->updateCurrentChannelImage()V

    return-void
.end method

.method public channelGuideSelected(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V
    .locals 9

    .line 734
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 740
    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsTimer:Ljava/util/Timer;

    .line 743
    :cond_1
    iget v7, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    .line 744
    iput p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    .line 746
    new-instance p5, Ljava/util/Timer;

    invoke-direct {p5}, Ljava/util/Timer;-><init>()V

    iput-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsTimer:Ljava/util/Timer;

    .line 747
    iget-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsTimer:Ljava/util/Timer;

    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tikilive/ui/channel/ChannelGuideFragment$13;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V

    const-wide/16 p1, 0x19

    invoke-virtual {p5, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public closePopup()Z
    .locals 1

    .line 1555
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mIsPopupOpened:Z

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventCloseButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected handlePlayerPaused()V
    .locals 2

    .line 1608
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->handlePlayerPaused()V

    .line 1609
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected handlePlayerTimeout()V
    .locals 2

    .line 1596
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->handlePlayerTimeout()V

    .line 1597
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected hideErrorLayoutElements()V
    .locals 2

    .line 1565
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->hideErrorLayoutElements()V

    .line 1566
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1567
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public loadNextInterval()V
    .locals 1

    .line 490
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    add-int/lit16 v0, v0, 0x1c20

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 491
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    add-int/lit16 v0, v0, 0x1c20

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    .line 492
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->reload()V

    return-void
.end method

.method public loadPreviousInterval()Z
    .locals 7

    .line 497
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    add-int/lit16 v0, v0, -0x1c20

    int-to-double v1, v0

    .line 498
    iget-object v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mMinFromDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpg-double v5, v1, v3

    const/4 v1, 0x0

    if-gez v5, :cond_0

    return v1

    .line 502
    :cond_0
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 503
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    add-int/lit16 v0, v0, 0x1c20

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    .line 505
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->reload(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public moveChannelPageDown()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 481
    iget v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x5

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 486
    :goto_0
    invoke-direct {p0, v0, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(II)V

    return-void
.end method

.method public moveChannelPageUp()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x5

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 472
    :cond_1
    invoke-direct {p0, v0, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(II)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 202
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    .line 207
    new-instance p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$4;

    invoke-direct {p1, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$4;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelNumberRequestedListener:Lcom/tikilive/ui/listener/OnChannelNumberRequestedListener;

    .line 223
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    return-void

    .line 204
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnChannelSelectedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 228
    invoke-super {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->initMinFromDate()Ljava/util/Date;

    .line 232
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mMinFromDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 233
    iget p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    add-int/lit16 p1, p1, 0x1c20

    iput p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/16 p1, 0xa

    .line 585
    new-array v3, p1, [Ljava/lang/String;

    const-string p1, "id"

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "channel_id"

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const-string p1, "name"

    const/4 v1, 0x2

    aput-object p1, v3, v1

    const-string p1, "description"

    const/4 v2, 0x3

    aput-object p1, v3, v2

    const-string p1, "start"

    const/4 v4, 0x4

    aput-object p1, v3, v4

    const-string p1, "end"

    const/4 v5, 0x5

    aput-object p1, v3, v5

    const-string p1, "img"

    const/4 v6, 0x6

    aput-object p1, v3, v6

    const-string p1, "ppv"

    const/4 v7, 0x7

    aput-object p1, v3, v7

    const-string p1, "ticket"

    const/16 v7, 0x8

    aput-object p1, v3, v7

    const-string p1, "status"

    const/16 v7, 0x9

    aput-object p1, v3, v7

    const-string p1, "((? <= start AND start < ?) OR (? < end AND end < ?) OR (start < ? AND ? < end))"

    .line 593
    new-array v6, v6, [Ljava/lang/String;

    iget v7, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 594
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p2

    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    .line 595
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v0

    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 596
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v1

    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    .line 597
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v2

    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 598
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v4

    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    .line 599
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v5

    const-string p2, "start ASC"

    .line 605
    new-instance v7, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    sget-object v2, Lcom/tikilive/ui/guide/ChannelGuideContentProvider;->CONTENT_URI_EVENTS:Landroid/net/Uri;

    move-object v0, v7

    move-object v4, p1

    move-object v5, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 239
    invoke-static {}, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->getInstance()Lcom/tikilive/ui/guide/ChannelGuideUpdater;

    move-result-object p3

    .line 240
    invoke-virtual {p3}, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->shouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/tikilive/ui/guide/ChannelGuideUpdater;->sync(Landroid/content/Context;)V

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "social_broadcasts"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSocialBroadcasts:Z

    .line 248
    :cond_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_2

    .line 249
    iget-object p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p3}, Lcom/tikilive/ui/channel/ChannelActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    .line 250
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 251
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x8000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 252
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 253
    invoke-virtual {p3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x200

    .line 254
    invoke-virtual {p3, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    const p3, 0x7f0d004d

    .line 257
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 259
    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$5;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$5;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    const p3, 0x7f0a0075

    .line 267
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 268
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a007a

    .line 269
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 270
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0073

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 273
    new-instance p3, Lcom/tikilive/ui/channel/ChannelGuideFragment$6;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p3, p0, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$6;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a0074

    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0a004f

    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0a02ea

    .line 286
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a02f6

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    iget-boolean v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSocialBroadcasts:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1201fe

    invoke-virtual {p0, v3}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 291
    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$7;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$7;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 302
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1201c5

    invoke-virtual {p0, v3}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 304
    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$8;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$8;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 436
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 619
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 620
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/ChannelProvider;->getChannels()Ljava/util/List;

    move-result-object p1

    .line 621
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Channel;

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 625
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 626
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 627
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 628
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_5

    .line 630
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 631
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/ChannelProvider;->hasById(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 632
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/ChannelProvider;->getById(I)Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    .line 633
    invoke-direct {p0, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->cursorToEvent(Landroid/database/Cursor;)Lcom/tikilive/ui/model/Event;

    move-result-object v1

    .line 635
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    iget v5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    invoke-virtual {v1, v5}, Lcom/tikilive/ui/model/Event;->setStart(I)V

    .line 637
    iget v5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    iget v6, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lcom/tikilive/ui/model/Event;->setDuration(I)V

    .line 640
    :cond_1
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v5

    if-gt v5, p1, :cond_2

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v5

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_2

    .line 641
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Channel;->setCurrentEvent(Lcom/tikilive/ui/model/Event;)V

    .line 644
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 646
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 647
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 650
    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_4
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 657
    :cond_5
    new-instance p1, Ljava/util/Date;

    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    int-to-long v0, p2

    mul-long v0, v0, v3

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 660
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 661
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "c L/d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 665
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 666
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    .line 668
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guide_header_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    iget-object v5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {v5}, Lcom/tikilive/ui/channel/ChannelActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 669
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 670
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc

    const/16 v3, 0x1e

    .line 671
    invoke-virtual {p2, v1, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 674
    :cond_6
    new-instance p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget v3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mFrom:I

    iget v4, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mTo:I

    iget-object v5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-object v0, p1

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Ljava/util/Map;IILcom/tikilive/ui/listener/OnChannelSelectedListener;Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;)V

    .line 675
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 677
    iget p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedScrollPosition:I

    .line 678
    iget p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusPosition:I

    .line 679
    iget-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusFirst:Z

    const/4 v1, -0x1

    .line 680
    iput v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedScrollPosition:I

    .line 681
    iput v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusPosition:I

    .line 682
    iput-boolean v7, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusFirst:Z

    .line 683
    iput v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    if-ne p1, v1, :cond_7

    .line 686
    invoke-direct {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToCurrentChannel()V

    goto :goto_4

    .line 688
    :cond_7
    invoke-direct {p0, p1, p2, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->moveToPosition(IIZ)V

    .line 691
    :goto_4
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mGrid:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 422
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onPause()V

    .line 423
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelGuideUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 424
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRadioSongChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, -0x1

    .line 425
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 401
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onResume()V

    .line 402
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelGuideUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tikilive.ui.service.CHANNEL_GUIDE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 406
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRadioSongChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tikilive.ui.service.RADIO_SONG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 410
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->setHistoryChannelGuide()V

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mIsPopupOpened:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 430
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onStop()V

    .line 431
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarkerUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 355
    invoke-super {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a02d3

    .line 357
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    const p2, 0x7f0a02db

    .line 358
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    const p2, 0x7f0a02da

    .line 359
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequiredSubtitle:Landroid/widget/TextView;

    const p2, 0x7f0a0115

    .line 361
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mGrid:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0239

    .line 362
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const p2, 0x7f0a00a3

    .line 363
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentTimeMarker:Landroid/widget/ImageView;

    .line 365
    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    invoke-direct {p2, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSelectedEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$SelectedEventDetailsViewHolder;

    .line 366
    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    invoke-direct {p2, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPopupEventDetailsViewHolder:Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    .line 368
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a011c

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 370
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 371
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 372
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$10;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p2, p0, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$10;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 386
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/tikilive/ui/channel/ChannelGuideFragment$11;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$11;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 396
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public reload()V
    .locals 1

    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->reload(Z)V

    return-void
.end method

.method public reload(Z)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedScrollPosition:I

    .line 512
    iget v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mCurrentPosition:I

    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusPosition:I

    .line 513
    iput-boolean p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mRequestedFocusFirst:Z

    .line 514
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method protected resetPlayerPaused()V
    .locals 2

    .line 1614
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->resetPlayerPaused()V

    .line 1615
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected resetPlayerTimeout()V
    .locals 2

    .line 1602
    invoke-super {p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->resetPlayerTimeout()V

    .line 1603
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected showErrorScreen(Ljava/lang/String;)V
    .locals 0

    .line 1572
    invoke-super {p0, p1}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->showErrorScreen(Ljava/lang/String;)V

    return-void
.end method

.method protected showRequiredMembershipScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequiredSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1591
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    return-void
.end method

.method protected showSubscriptionErrorScreen(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 1577
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->hideErrorLayoutElements()V

    .line 1578
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mPreviewPlayerChannelTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1579
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequiredTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequiredSubtitle:Landroid/widget/TextView;

    const p2, 0x7f120277

    invoke-virtual {p0, p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ver.woplay.tv"

    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/offers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mSubscrRequired:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1582
    invoke-virtual {p0, p3}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->playPreviewStream(Ljava/lang/String;)V

    return-void
.end method
