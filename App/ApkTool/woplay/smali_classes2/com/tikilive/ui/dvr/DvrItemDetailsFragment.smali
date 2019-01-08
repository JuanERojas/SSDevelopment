.class public Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "DvrItemDetailsFragment.java"


# static fields
.field private static final ARG_SELECTED_ITEM_ID:Ljava/lang/String; = "selected_dvr_item_id"

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.dvr.DvrItemDetailsFragment"


# instance fields
.field private mDvrItemChannel:Landroid/widget/TextView;

.field private mDvrItemDate:Landroid/widget/TextView;

.field private mDvrItemDeleteButton:Landroid/widget/Button;

.field private mDvrItemDelimiter1:Landroid/widget/TextView;

.field private mDvrItemDelimiter2:Landroid/widget/TextView;

.field private mDvrItemDescription:Landroid/widget/TextView;

.field private mDvrItemDetails:Landroid/widget/LinearLayout;

.field private mDvrItemImage:Landroid/widget/ImageView;

.field private mDvrItemProgress:Landroid/widget/ProgressBar;

.field private mDvrItemTimeDuration:Landroid/widget/TextView;

.field private mDvrItemTitle:Landroid/widget/TextView;

.field private mDvrItemWatchButton:Landroid/widget/Button;

.field private final mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

.field private mErrorAwareListener:Lcom/tikilive/ui/dvr/OnErrorAwareListener;

.field private mOtherDvrItemsCounter:Landroid/widget/TextView;

.field private mOtherDvrItemsHeader:Landroid/widget/LinearLayout;

.field private mOtherDvrItemsTitle:Landroid/widget/TextView;

.field private mPageTitle:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedItemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    invoke-static {}, Lcom/tikilive/ui/model/DvrProvider;->getInstance()Lcom/tikilive/ui/model/DvrProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Lcom/tikilive/ui/model/DvrProvider;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Lcom/tikilive/ui/dvr/OnErrorAwareListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mErrorAwareListener:Lcom/tikilive/ui/dvr/OnErrorAwareListener;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->renderDvrItemDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->renderOtherDvrItems()V

    return-void
.end method

.method static synthetic access$500(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->remove()V

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static newInstance(I)Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;
    .locals 3

    .line 80
    new-instance v0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_dvr_item_id"

    .line 82
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private remove()V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    iget v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mSelectedItemId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrProvider;->getRequestById(I)Lcom/tikilive/ui/model/Dvr;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v2

    new-instance v3, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Lcom/tikilive/ui/model/Dvr;)V

    new-instance v0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$6;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$6;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/tikilive/ui/backend/Api;->deleteDvr(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private renderDvrItemDetails()V
    .locals 14

    .line 209
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    iget v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mSelectedItemId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrProvider;->getRequestById(I)Lcom/tikilive/ui/model/Dvr;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v1

    sget-object v2, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mPageTitle:Landroid/widget/TextView;

    const v2, 0x7f1200f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v1

    sget-object v2, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v1, v2, :cond_1

    .line 214
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mPageTitle:Landroid/widget/TextView;

    const v2, 0x7f1200fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v1

    sget-object v2, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v1, v2, :cond_2

    .line 216
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mPageTitle:Landroid/widget/TextView;

    const v2, 0x7f1200fb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v1

    sget-object v2, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v1, v2, :cond_3

    .line 218
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mPageTitle:Landroid/widget/TextView;

    const v2, 0x7f1200f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemImage:Landroid/widget/ImageView;

    .line 224
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 225
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x7f1201af

    .line 228
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemChannel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getChannel()Lcom/tikilive/ui/model/Dvr$Channel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr$Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 233
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v6

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long v6, v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 234
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDate:Landroid/widget/TextView;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "c L/d"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDate:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    sget-object v3, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v7

    aget v3, v3, v7

    const/16 v7, 0x8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 282
    :pswitch_0
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTimeDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getVideo()Lcom/tikilive/ui/model/Dvr$Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr$Video;->getDurationFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    const v2, 0x7f1200ed

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 288
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_1

    .line 265
    :pswitch_1
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDate:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTimeDuration:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "hh:mm a"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "hh:mm a"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 274
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v3

    int-to-long v8, v3

    mul-long v8, v8, v4

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 275
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Event;->getStart()I

    move-result v8

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tikilive/ui/model/Event;->getDuration()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v8, v8

    mul-long v8, v8, v4

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 276
    iget-object v4, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v12, v8, v10

    const-wide/16 v8, 0x64

    mul-long v12, v12, v8

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long v10, v8, v1

    div-long/2addr v12, v10

    long-to-double v1, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 277
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 252
    :pswitch_2
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTimeDuration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "hh:mm a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm a"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    const v2, 0x7f1200eb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 262
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_1

    .line 239
    :pswitch_3
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTimeDuration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "hh:mm a"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm a"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter2:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    const v2, 0x7f1200ec

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 249
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 291
    :goto_1
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    new-instance v2, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$3;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Lcom/tikilive/ui/model/Dvr;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    new-instance v2, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Lcom/tikilive/ui/model/Dvr;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private renderOtherDvrItems()V
    .locals 10

    .line 401
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    iget v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mSelectedItemId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrProvider;->getRequestById(I)Lcom/tikilive/ui/model/Dvr;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 404
    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 405
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/tikilive/ui/dvr/DvrLibrarySpaceItemDecoration;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/tikilive/ui/dvr/DvrLibrarySpaceItemDecoration;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 406
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 408
    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;-><init>(Landroid/app/Activity;)V

    .line 410
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-object v4, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    invoke-virtual {v4}, Lcom/tikilive/ui/model/DvrProvider;->getRequests()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tikilive/ui/model/Dvr;

    .line 413
    invoke-virtual {v6}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_8

    .line 419
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 420
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10000b

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 421
    new-instance v5, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$7;

    invoke-direct {v5, p0, v2, v4}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$7;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Ljava/lang/String;I)V

    .line 433
    new-instance v4, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$8;

    invoke-direct {v4, p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$8;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    .line 444
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tikilive/ui/model/Dvr;

    .line 445
    invoke-virtual {v6}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v8

    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 446
    invoke-virtual {v1, v6, v5, v4}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->addItem(Lcom/tikilive/ui/model/Dvr;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsCounter:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v2

    sget-object v3, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v2, v3, :cond_4

    .line 451
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsTitle:Landroid/widget/TextView;

    const v2, 0x7f1200f0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 452
    :cond_4
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v2

    sget-object v3, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v2, v3, :cond_5

    .line 453
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsTitle:Landroid/widget/TextView;

    const v2, 0x7f1200f1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 454
    :cond_5
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v2

    sget-object v3, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v2, v3, :cond_6

    .line 455
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsTitle:Landroid/widget/TextView;

    const v2, 0x7f1200f2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 456
    :cond_6
    invoke-virtual {v0}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v0

    sget-object v2, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v0, v2, :cond_7

    .line 457
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsTitle:Landroid/widget/TextView;

    const v2, 0x7f1200ef

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    :cond_8
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/dvr/OnErrorAwareListener;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mErrorAwareListener:Lcom/tikilive/ui/dvr/OnErrorAwareListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 97
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnErrorAwareListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 105
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/dvr/OnErrorAwareListener;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mErrorAwareListener:Lcom/tikilive/ui/dvr/OnErrorAwareListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 107
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnErrorAwareListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selected_dvr_item_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mSelectedItemId:I

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d0052

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0204

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mPageTitle:Landroid/widget/TextView;

    const p2, 0x7f0a0287

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDetails:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0289

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemImage:Landroid/widget/ImageView;

    const p2, 0x7f0a028c

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTitle:Landroid/widget/TextView;

    const p2, 0x7f0a0286

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDescription:Landroid/widget/TextView;

    const p2, 0x7f0a0280

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemChannel:Landroid/widget/TextView;

    const p2, 0x7f0a0282

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDate:Landroid/widget/TextView;

    const p2, 0x7f0a028b

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemTimeDuration:Landroid/widget/TextView;

    const p2, 0x7f0a0284

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter1:Landroid/widget/TextView;

    const p2, 0x7f0a0285

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDelimiter2:Landroid/widget/TextView;

    const p2, 0x7f0a028a

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemProgress:Landroid/widget/ProgressBar;

    const p2, 0x7f0a028d

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemWatchButton:Landroid/widget/Button;

    const p2, 0x7f0a0283

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mDvrItemDeleteButton:Landroid/widget/Button;

    const p2, 0x7f0a024f

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f0a01f5

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsHeader:Landroid/widget/LinearLayout;

    const p2, 0x7f0a01f6

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsTitle:Landroid/widget/TextView;

    const p2, 0x7f0a01f4

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mOtherDvrItemsCounter:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mErrorAwareListener:Lcom/tikilive/ui/dvr/OnErrorAwareListener;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 204
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mSelectedItemId:I

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryDvrLibraryItemDetails(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iget p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->mSelectedItemId:I

    new-instance v0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$1;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    new-instance v1, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$2;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/tikilive/ui/backend/Api;->getDvr(ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
