.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelGuideRowViewHolder"
.end annotation


# instance fields
.field private mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

.field private mChannelContainer:Landroid/widget/LinearLayout;

.field private mChannelImage:Landroid/widget/ImageView;

.field private mChannelName:Landroid/widget/TextView;

.field private mChannelNumber:Landroid/widget/TextView;

.field private mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

.field private mCount:I

.field private mEventsList:Landroid/widget/LinearLayout;

.field private mFrom:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLabelAdult:Landroid/widget/TextView;

.field private mLabelCatchupTv:Landroid/widget/TextView;

.field private mLabelHD:Landroid/widget/TextView;

.field private mLabelLive:Landroid/widget/TextView;

.field private mLabelRadio:Landroid/widget/TextView;

.field private mLabelSling:Landroid/widget/TextView;

.field private mLabelTVE:Landroid/widget/TextView;

.field private mPosition:I

.field private mTo:I

.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;Landroid/view/View;IILcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;)V
    .locals 1

    .line 1074
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    .line 1075
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1072
    iput v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    .line 1077
    iput p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mFrom:I

    .line 1078
    iput p4, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mTo:I

    .line 1079
    iput-object p5, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    .line 1081
    invoke-static {}, Lcom/tikilive/ui/model/ChannelProvider;->getInstance()Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    .line 1082
    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0a0070

    .line 1084
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0078

    .line 1085
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelName:Landroid/widget/TextView;

    const p1, 0x7f0a0079

    .line 1086
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelNumber:Landroid/widget/TextView;

    const p1, 0x7f0a0076

    .line 1087
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelImage:Landroid/widget/ImageView;

    const p1, 0x7f0a00e7

    .line 1088
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mEventsList:Landroid/widget/LinearLayout;

    const p1, 0x7f0a016b

    .line 1090
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelLive:Landroid/widget/TextView;

    const p1, 0x7f0a016c

    .line 1091
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelRadio:Landroid/widget/TextView;

    const p1, 0x7f0a0169

    .line 1092
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelCatchupTv:Landroid/widget/TextView;

    const p1, 0x7f0a016e

    .line 1093
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelTVE:Landroid/widget/TextView;

    const p1, 0x7f0a016d

    .line 1094
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelSling:Landroid/widget/TextView;

    const p1, 0x7f0a016a

    .line 1095
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelHD:Landroid/widget/TextView;

    const p1, 0x7f0a0168

    .line 1096
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelAdult:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1049
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mEventsList:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;Lcom/tikilive/ui/model/Channel;)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->changeChannel(Lcom/tikilive/ui/model/Channel;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I
    .locals 0

    .line 1049
    iget p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    return p0
.end method

.method static synthetic access$1700(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;
    .locals 0

    .line 1049
    iget-object p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I
    .locals 0

    .line 1049
    iget p0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    return p0
.end method

.method private changeChannel(Lcom/tikilive/ui/model/Channel;)V
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->getOnChannelSelectedListener()Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1547
    invoke-interface {v0, p1}, Lcom/tikilive/ui/listener/OnChannelSelectedListener;->onChannelSelected(Lcom/tikilive/ui/model/Channel;)V

    :cond_0
    return-void
.end method

.method private getDynamicId(II)I
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$2400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result v0

    mul-int/lit16 p1, p1, 0x2710

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V
    .locals 14

    move-object v8, p0

    move/from16 v7, p3

    move/from16 v9, p4

    .line 1230
    iget-object v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mEventsList:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v3, 0x7f0d0060

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1231
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v1, v9, v7

    int-to-float v1, v1

    .line 1232
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v0, 0x7f0a011d

    .line 1234
    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 1236
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v0

    const v1, 0x7f1201b1

    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getGenre()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_2

    .line 1242
    invoke-virtual/range {p2 .. p2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f0800c4

    .line 1247
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    :goto_1
    const v0, 0x7f0800cb

    .line 1245
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1250
    :goto_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1251
    new-instance v1, Ljava/util/Date;

    int-to-long v3, v7

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1252
    new-instance v3, Ljava/util/Date;

    int-to-long v12, v9

    mul-long v12, v12, v5

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 1254
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    div-long/2addr v12, v5

    long-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1255
    iget v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mFrom:I

    if-gt v5, v4, :cond_7

    iget v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mTo:I

    if-gt v4, v5, :cond_7

    .line 1256
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v2, v4, v12

    if-gtz v2, :cond_6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v2, v4, v12

    if-gtz v2, :cond_6

    .line 1257
    iget v2, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    const/16 v4, 0x270f

    invoke-direct {v8, v2, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1258
    iget v2, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    add-int/lit8 v2, v2, -0x1

    .line 1259
    iget-object v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {v5, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->hasItemAtPosition(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1260
    invoke-direct {v8, v2, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1263
    :cond_5
    iget v2, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    .line 1264
    iget-object v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {v5, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->hasItemAtPosition(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1265
    invoke-direct {v8, v2, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    goto :goto_3

    .line 1268
    :cond_6
    iget v2, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    iget v4, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    invoke-direct {v8, v2, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setId(I)V

    goto :goto_3

    .line 1271
    :cond_7
    iget v4, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    iget v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    invoke-direct {v8, v4, v5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setId(I)V

    .line 1272
    iget v4, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    if-nez v4, :cond_9

    .line 1273
    iget v4, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    add-int/lit8 v4, v4, -0x1

    .line 1274
    iget-object v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->hasItemAtPosition(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1275
    invoke-direct {v8, v4, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1278
    :cond_8
    iget v4, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    .line 1279
    iget-object v5, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mAdapter:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->hasItemAtPosition(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1280
    invoke-direct {v8, v4, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->getDynamicId(II)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 1285
    :cond_9
    :goto_3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gtz v6, :cond_c

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    .line 1286
    iget-object v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    move-object v12, p1

    if-ne v12, v0, :cond_d

    .line 1287
    invoke-virtual {v12}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v12}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v12}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const v0, 0x7f0800ce

    .line 1290
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_b
    :goto_4
    const v0, 0x7f0800cf

    .line 1288
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_c
    move-object v12, p1

    .line 1294
    iget-object v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1297
    :cond_d
    :goto_5
    new-instance v13, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;

    move-object v0, v13

    move-object v1, v8

    move-object v2, v12

    move-object/from16 v3, p2

    move v4, v7

    move v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$2;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IILandroid/widget/RelativeLayout;)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1318
    new-instance v13, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    move-object v0, v13

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v4, v11

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;Lcom/tikilive/ui/model/Event;Lcom/tikilive/ui/model/Channel;Landroid/widget/TextView;IILandroid/widget/RelativeLayout;)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1475
    new-instance v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;

    invoke-direct {v0, v8}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$4;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1519
    iget-object v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mEventsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0a024a

    .line 1521
    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 1524
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p5, :cond_e

    .line 1534
    invoke-virtual {v11}, Landroid/widget/TextView;->requestFocus()Z

    .line 1537
    :cond_e
    iget v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    return-void
.end method


# virtual methods
.method public bindItem(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;I)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1116
    iput v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mPosition:I

    const/4 v7, 0x0

    .line 1117
    iput v7, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mCount:I

    .line 1119
    iget-object v8, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->channel:Lcom/tikilive/ui/model/Channel;

    .line 1121
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isPremium()Z

    move-result v1

    const/4 v9, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v6, v7, v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->markChannelSelected(ZZ)V

    .line 1123
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1128
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelProvider:Lcom/tikilive/ui/model/ChannelProvider;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v1

    if-ne v8, v1, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 1133
    :goto_2
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$1;

    invoke-direct {v2, v6, v8}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$1;-><init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;Lcom/tikilive/ui/model/Channel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isRadio()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 1141
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelLive:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelRadio:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelTVE:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelSling:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1146
    :cond_3
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isTvEverywhere()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1147
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelLive:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelRadio:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelTVE:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelSling:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1152
    :cond_4
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isSling()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1153
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelLive:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelRadio:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelTVE:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelSling:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1158
    :cond_5
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isCatchUpTv()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1159
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelLive:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelRadio:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelTVE:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1163
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelSling:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1165
    :cond_6
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelLive:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1166
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelRadio:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelCatchupTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1168
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelTVE:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1169
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelSling:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    :goto_3
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isAdult()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1173
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelAdult:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelHD:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1175
    :cond_7
    invoke-virtual {v8}, Lcom/tikilive/ui/model/Channel;->isHd()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1176
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelAdult:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1177
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelHD:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1179
    :cond_8
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelAdult:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1180
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mLabelHD:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    :goto_4
    iget-object v1, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mEventsList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1186
    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->events:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 1187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 1189
    iget v11, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mFrom:I

    add-int/lit16 v12, v11, 0x1c20

    .line 1193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v11

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x3c

    if-eqz v1, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/tikilive/ui/model/Event;

    .line 1196
    invoke-virtual {v14}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v1

    if-ge v1, v11, :cond_9

    move v15, v11

    goto :goto_6

    .line 1199
    :cond_9
    invoke-virtual {v14}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v1

    move v15, v1

    .line 1202
    :goto_6
    invoke-virtual {v14}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v1

    invoke-virtual {v14}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v4

    add-int/2addr v1, v4

    if-le v1, v12, :cond_a

    move/from16 v16, v12

    goto :goto_7

    :cond_a
    move/from16 v16, v1

    :goto_7
    sub-int v1, v15, v3

    if-le v1, v2, :cond_c

    const/4 v2, 0x0

    if-eqz v10, :cond_b

    if-nez v0, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    move-object v0, v6

    move-object v1, v8

    move v4, v15

    .line 1208
    invoke-direct/range {v0 .. v5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V

    const/4 v0, 0x1

    :cond_c
    if-eqz v10, :cond_d

    if-nez v0, :cond_d

    .line 1214
    invoke-virtual {v14}, Lcom/tikilive/ui/model/Event;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v17, 0x1

    goto :goto_9

    :cond_d
    const/16 v17, 0x0

    :goto_9
    move-object v0, v6

    move-object v1, v8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    .line 1215
    invoke-direct/range {v0 .. v5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V

    move/from16 v3, v16

    move/from16 v0, v17

    goto :goto_5

    :cond_e
    sub-int v1, v12, v3

    if-le v1, v2, :cond_12

    const/4 v2, 0x0

    if-eqz v10, :cond_f

    if-nez v0, :cond_f

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    move-object v0, v6

    move-object v1, v8

    move v4, v12

    .line 1219
    invoke-direct/range {v0 .. v5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    .line 1223
    iget v3, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mFrom:I

    iget v4, v6, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mTo:I

    if-eqz v10, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    move-object v0, v6

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->renderEventCell(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIZ)V

    :cond_12
    :goto_c
    return-void
.end method

.method public markChannelSelected(ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0800c7

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1104
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0800ca

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1108
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0800c6

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1110
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->mChannelContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0800c9

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
