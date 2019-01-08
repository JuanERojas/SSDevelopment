.class public Lcom/tikilive/ui/account/DeviceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.account.DeviceAdapter"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mReplaceMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    .line 49
    iput-boolean p2, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mReplaceMode:Z

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/account/DeviceAdapter;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/account/DeviceAdapter;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mReplaceMode:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/tikilive/ui/account/DeviceAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addDevice(Lcom/tikilive/ui/model/Device;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addDevices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Device;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {p0}, Lcom/tikilive/ui/account/DeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-virtual {p0}, Lcom/tikilive/ui/account/DeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 78
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/account/DeviceAdapter;->onBindViewHolder(Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;I)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/model/Device;

    .line 107
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->isPrimary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDevicePrimaryLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDevicePrimaryLabel:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mReplaceMode:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_1
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceLastUpdated:Landroid/widget/TextView;

    const v1, 0x7f1200cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getUpdated()I

    move-result v0

    if-lez v0, :cond_3

    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getUpdated()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 121
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd, yyyy hh:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceLastUpdated:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1200d0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceLastUpdated:Landroid/widget/TextView;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :goto_2
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getType()Lcom/tikilive/ui/model/Device$Type;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->ANDROID:Lcom/tikilive/ui/model/Device$Type;

    if-ne v0, v1, :cond_4

    .line 129
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 130
    :cond_4
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getType()Lcom/tikilive/ui/model/Device$Type;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->ANDROID_STB:Lcom/tikilive/ui/model/Device$Type;

    const v2, 0x7f0800a9

    if-ne v0, v1, :cond_5

    .line 131
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 132
    :cond_5
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getType()Lcom/tikilive/ui/model/Device$Type;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->HISENSE:Lcom/tikilive/ui/model/Device$Type;

    const v3, 0x7f0800aa

    if-ne v0, v1, :cond_6

    .line 133
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getType()Lcom/tikilive/ui/model/Device$Type;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->HTML5:Lcom/tikilive/ui/model/Device$Type;

    if-ne v0, v1, :cond_7

    .line 135
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 136
    :cond_7
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getType()Lcom/tikilive/ui/model/Device$Type;

    move-result-object v0

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->IOS:Lcom/tikilive/ui/model/Device$Type;

    if-ne v0, v1, :cond_8

    .line 137
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 139
    :cond_8
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_3
    iget-boolean v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mReplaceMode:Z

    if-eqz v0, :cond_9

    .line 143
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceAction:Landroid/widget/Button;

    const v0, 0x7f1201f5

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 145
    :cond_9
    iget-object v0, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceAction:Landroid/widget/Button;

    const v1, 0x7f120260

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 146
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getUsedStatus()Lcom/tikilive/ui/model/Device$UsedStatus;

    move-result-object p2

    sget-object v0, Lcom/tikilive/ui/model/Device$UsedStatus;->IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    if-ne p2, v0, :cond_a

    .line 147
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mUsedStatus:Landroid/widget/TextView;

    const v0, 0x7f1200d7

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mUsedStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060068

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 150
    :cond_a
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mUsedStatus:Landroid/widget/TextView;

    const v0, 0x7f1200d8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mUsedStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060069

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :goto_4
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceAction:Landroid/widget/Button;

    new-instance v0, Lcom/tikilive/ui/account/DeviceAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$1;-><init>(Lcom/tikilive/ui/account/DeviceAdapter;Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 168
    iget-object p2, p1, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->mDeviceAction:Landroid/widget/Button;

    new-instance v0, Lcom/tikilive/ui/account/DeviceAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$2;-><init>(Lcom/tikilive/ui/account/DeviceAdapter;Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/account/DeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;
    .locals 3

    .line 89
    iget-boolean p2, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mReplaceMode:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 90
    new-instance p2, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    iget-object v1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    .line 91
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00be

    .line 92
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/account/DeviceAdapter;Landroid/view/View;)V

    return-object p2

    .line 95
    :cond_0
    new-instance p2, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    iget-object v1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mActivity:Landroid/app/Activity;

    .line 96
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d001b

    .line 97
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/account/DeviceAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public removeDevice(Lcom/tikilive/ui/model/Device;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/tikilive/ui/account/DeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method
