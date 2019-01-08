.class public Lcom/tikilive/ui/dvr/DvrLibraryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DvrLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Dvr;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mActivity:Landroid/app/Activity;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/tikilive/ui/model/Dvr;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Dvr;

    .line 116
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->onBindViewHolder(Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;I)V
    .locals 11

    .line 60
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Dvr;

    .line 62
    iget-object v1, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemImage:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 71
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v4

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v7

    add-int/2addr v4, v7

    int-to-long v7, v4

    mul-long v7, v7, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 72
    sget-object v4, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$1;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v7

    aget v4, v4, v7

    const/16 v7, 0x8

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 93
    :pswitch_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "c L/d"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr$Video;->getDurationFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v0, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    :pswitch_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "hh:mm a"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "hh:mm a"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 87
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v4

    int-to-long v7, v4

    mul-long v7, v7, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 88
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v7

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v0

    add-int/2addr v7, v0

    int-to-long v7, v7

    mul-long v7, v7, v5

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 89
    iget-object v0, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    const-wide/16 v5, 0x64

    mul-long v9, v9, v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v6, v4, v2

    div-long/2addr v9, v6

    long-to-double v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 90
    iget-object v0, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 75
    :pswitch_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "c L/d"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "hh:mm a"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm a"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    :goto_0
    iget-object v0, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->mDvrItemDetails:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    .line 102
    iget-object v1, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    .line 105
    iget-object p1, p1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;
    .locals 3

    .line 52
    new-instance p2, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->mActivity:Landroid/app/Activity;

    .line 53
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0043

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
