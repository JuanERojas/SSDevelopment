.class public Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;
.super Landroid/support/v4/app/Fragment;
.source "DvrLibraryActivityFragment.java"


# static fields
.field private static final ARG_HAS_FAILED_REQUESTS:Ljava/lang/String; = "has_failed_requests"

.field private static final ARG_INITIAL_TAB:Ljava/lang/String; = "initial_tab"

.field private static final SORTING_ORDER_DATE:I = 0x0

.field private static final SORTING_ORDER_TITLE:I = 0x1


# instance fields
.field private mAdapter:Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

.field private final mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHasFailedRequests:Z

.field private mItemsCounter:Landroid/widget/TextView;

.field private mOptions:Landroid/widget/LinearLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

.field private mSortingOrder:I

.field private mTabFailed:Landroid/widget/LinearLayout;

.field private mTabFailedImage:Landroid/widget/ImageView;

.field private mTabRecorded:Landroid/widget/LinearLayout;

.field private mTabRecordedImage:Landroid/widget/ImageView;

.field private mTabRecording:Landroid/widget/LinearLayout;

.field private mTabRecordingImage:Landroid/widget/ImageView;

.field private mTabScheduled:Landroid/widget/LinearLayout;

.field private mTabScheduledImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    invoke-static {}, Lcom/tikilive/ui/model/DvrProvider;->getInstance()Lcom/tikilive/ui/model/DvrProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    .line 57
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    iput-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSortingOrder:I

    return-void
.end method

.method static synthetic access$002(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;Lcom/tikilive/ui/model/DvrStatus;)Lcom/tikilive/ui/model/DvrStatus;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->reloadCurrentTab()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSortingOrder:I

    return p0
.end method

.method static synthetic access$202(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSortingOrder:I

    return p1
.end method

.method static synthetic access$300(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mItemsCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static newInstance(ZLcom/tikilive/ui/model/DvrStatus;)Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;
    .locals 3

    .line 62
    new-instance v0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "has_failed_requests"

    .line 64
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "initial_tab"

    .line 65
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private reloadCurrentTab()V
    .locals 8

    .line 203
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryDvrLibrary(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 207
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 208
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 209
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 210
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 212
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduledImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 219
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 220
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 221
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 222
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 224
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduledImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 230
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 231
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 232
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 233
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 235
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduledImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v0, v1, :cond_3

    .line 240
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 241
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 242
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 243
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 244
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 246
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduledImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mAdapter:Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->clear()V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrProvider;->getRequests()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tikilive/ui/model/Dvr;

    .line 257
    invoke-virtual {v6}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v6

    iget-object v7, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v6, v7}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 263
    iget v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSortingOrder:I

    if-ne v1, v2, :cond_6

    .line 264
    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$6;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$6;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 273
    :cond_6
    iget v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSortingOrder:I

    if-nez v1, :cond_7

    .line 274
    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$7;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$7;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10000b

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v5, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$8;

    invoke-direct {v5, p0, v2, v1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$8;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;Ljava/lang/String;I)V

    .line 308
    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$9;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$9;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tikilive/ui/model/Dvr;

    .line 320
    iget-object v7, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mAdapter:Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    invoke-virtual {v7, v6, v5, v1}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->addItem(Lcom/tikilive/ui/model/Dvr;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 322
    :cond_8
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mItemsCounter:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_9
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mAdapter:Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 326
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 329
    :cond_a
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mOptions:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 331
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f1200e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f1200ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 334
    :cond_c
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 335
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f1200e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 336
    :cond_d
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/DvrStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 337
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f1200e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :goto_5
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$10;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$10;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "has_failed_requests"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mHasFailedRequests:Z

    .line 78
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "initial_tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/DvrStatus;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    .line 79
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    if-nez p1, :cond_0

    .line 80
    sget-object p1, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const v0, 0x7f0d0053

    .line 88
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0250

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    new-instance p2, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tikilive/ui/dvr/DvrLibraryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mAdapter:Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    .line 92
    new-instance p2, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 93
    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/tikilive/ui/dvr/DvrLibrarySpaceItemDecoration;

    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/tikilive/ui/dvr/DvrLibrarySpaceItemDecoration;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 95
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 96
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mAdapter:Lcom/tikilive/ui/dvr/DvrLibraryAdapter;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a01f3

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mOptions:Landroid/widget/LinearLayout;

    const p2, 0x7f0a00d7

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mEmptyView:Landroid/widget/TextView;

    const p2, 0x7f0a0166

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mItemsCounter:Landroid/widget/TextView;

    const p2, 0x7f0a02ee

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02ef

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordedImage:Landroid/widget/ImageView;

    const p2, 0x7f0a02f0

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02f1

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecordingImage:Landroid/widget/ImageView;

    const p2, 0x7f0a02f2

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02f3

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduledImage:Landroid/widget/ImageView;

    const p2, 0x7f0a02e6

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02e7

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailedImage:Landroid/widget/ImageView;

    .line 111
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecorded:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$1;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabRecording:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$2;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabScheduled:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$3;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$3;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-boolean p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mHasFailedRequests:Z

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$4;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$4;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mTabFailed:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0a02ba

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 146
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03000a

    const v4, 0x1090008

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    const v3, 0x1090009

    .line 148
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 149
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    new-instance v2, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment$5;-><init>(Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    invoke-direct {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->reloadCurrentTab()V

    const p2, 0x7f0a00d3

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f0a00d2

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 176
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/tikilive/ui/dvr/DvrUsage;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/dvr/DvrUsage;

    move-result-object v3

    .line 177
    iget-object v4, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mDvrProvider:Lcom/tikilive/ui/model/DvrProvider;

    invoke-virtual {v4}, Lcom/tikilive/ui/model/DvrProvider;->getRequestsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tikilive/ui/dvr/DvrUsage;->setUsed(I)V

    .line 179
    invoke-virtual {v3}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 180
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f1200fc

    .line 184
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tikilive/ui/dvr/DvrUsage;->getAvailable()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p3

    invoke-virtual {v3}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {v3}, Lcom/tikilive/ui/dvr/DvrUsage;->getUsed()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {v3}, Lcom/tikilive/ui/dvr/DvrUsage;->getTotal()I

    move-result v0

    div-int/2addr p2, v0

    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 189
    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->mSelectedTab:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/helper/History;->setHistoryDvrLibrary(Ljava/lang/String;)V

    return-void
.end method
