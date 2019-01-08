.class public Lcom/tikilive/ui/channel/ChannelListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChannelListFragment.java"


# instance fields
.field private mAllChannelsCounter:Landroid/widget/TextView;

.field private mAllChannelsTitle:Landroid/widget/TextView;

.field private mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

.field private mNoChannelsInfo:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

.field private mSocialBroadcasts:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSocialBroadcasts:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/channel/ChannelListFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/channel/ChannelListFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    return-object p0
.end method

.method public static newInstance(Z)Lcom/tikilive/ui/channel/ChannelListFragment;
    .locals 3

    .line 41
    new-instance v0, Lcom/tikilive/ui/channel/ChannelListFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/channel/ChannelListFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "social_broadcasts"

    .line 44
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 64
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement SimpleExoPlayerControl"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :catch_1
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

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 73
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mChannelSelectedListener:Lcom/tikilive/ui/listener/OnChannelSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    iput-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 80
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement SimpleExoPlayerControl"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :catch_1
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "social_broadcasts"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSocialBroadcasts:Z

    :cond_0
    const p3, 0x7f0d004f

    .line 94
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a024d

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f0a002e

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsCounter:Landroid/widget/TextView;

    const p2, 0x7f0a01e6

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mNoChannelsInfo:Landroid/widget/TextView;

    const p2, 0x7f0a004f

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0a02ea

    .line 101
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a02f6

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a002f

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsTitle:Landroid/widget/TextView;

    .line 104
    iget-boolean v1, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSocialBroadcasts:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1201fe

    invoke-virtual {p0, v3}, Lcom/tikilive/ui/channel/ChannelListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsTitle:Landroid/widget/TextView;

    const v1, 0x7f120026

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    new-instance p2, Lcom/tikilive/ui/channel/ChannelListFragment$1;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelListFragment$1;-><init>(Lcom/tikilive/ui/channel/ChannelListFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1201c5

    invoke-virtual {p0, v3}, Lcom/tikilive/ui/channel/ChannelListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsTitle:Landroid/widget/TextView;

    const v1, 0x7f120025

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 122
    new-instance p2, Lcom/tikilive/ui/channel/ChannelListFragment$2;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelListFragment$2;-><init>(Lcom/tikilive/ui/channel/ChannelListFragment;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSimpleExoPlayerControl:Lcom/tikilive/ui/channel/SimpleExoPlayerControl;

    invoke-interface {v0}, Lcom/tikilive/ui/channel/SimpleExoPlayerControl;->getSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 208
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->setHistoryChannelList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 139
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    new-instance p1, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 142
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 143
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p2, v0}, Lcom/tikilive/ui/channel/ChannelSpaceItemDecoration;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 144
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 146
    new-instance p1, Lcom/tikilive/ui/channel/ChannelsAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tikilive/ui/channel/ChannelsAdapter;-><init>(Landroid/app/Activity;)V

    .line 148
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/tikilive/ui/channel/ChannelListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000a

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v2

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 152
    new-instance v2, Lcom/tikilive/ui/channel/ChannelListFragment$3;

    invoke-direct {v2, p0, p2, v1}, Lcom/tikilive/ui/channel/ChannelListFragment$3;-><init>(Lcom/tikilive/ui/channel/ChannelListFragment;Ljava/lang/String;I)V

    .line 164
    new-instance v1, Lcom/tikilive/ui/channel/ChannelListFragment$4;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelListFragment$4;-><init>(Lcom/tikilive/ui/channel/ChannelListFragment;)V

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tikilive/ui/model/Channel;

    .line 173
    invoke-virtual {p1, v3, v2, v1}, Lcom/tikilive/ui/channel/ChannelsAdapter;->addItem(Lcom/tikilive/ui/model/Channel;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsCounter:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 177
    :cond_1
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mAllChannelsTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-boolean p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mSocialBroadcasts:Z

    if-eqz p2, :cond_2

    .line 179
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mNoChannelsInfo:Landroid/widget/TextView;

    const v0, 0x7f1201ba

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 181
    :cond_2
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mNoChannelsInfo:Landroid/widget/TextView;

    const v0, 0x7f1201b8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 183
    :goto_1
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mNoChannelsInfo:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_2
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/tikilive/ui/channel/ChannelListFragment$5;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelListFragment$5;-><init>(Lcom/tikilive/ui/channel/ChannelListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
