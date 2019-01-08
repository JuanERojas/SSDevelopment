.class public Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "TracksChooserDialog.java"


# static fields
.field private static final TEXT_TRACK_NONE_ID:J = -0x1L


# instance fields
.field private mActiveTracks:[J

.field private mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioVideoAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

.field private mSelectedAudioPosition:I

.field private mSelectedTextPosition:I

.field private mTextAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

.field private mTextTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mActiveTracks:[J

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioTracks:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mVideoTracks:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedTextPosition:I

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedAudioPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioVideoAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mVideoTracks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object p0
.end method

.method private buildNoneTrack()Lcom/google/android/gms/cast/MediaTrack;
    .locals 4

    .line 194
    new-instance v0, Lcom/google/android/gms/cast/MediaTrack$Builder;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/cast/MediaTrack$Builder;-><init>(JI)V

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_none:I

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaTrack$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaTrack$Builder;->setSubtype(I)Lcom/google/android/gms/cast/MediaTrack$Builder;

    move-result-object v0

    const-string v1, ""

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaTrack$Builder;->setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack$Builder;->build()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;
    .locals 3

    .line 250
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;-><init>()V

    .line 251
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "media"

    .line 252
    invoke-static {p0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->mediaInfoToBundle(Lcom/google/android/gms/cast/MediaInfo;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private partitionTracks()V
    .locals 13

    .line 205
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 207
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 208
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->buildNoneTrack()Lcom/google/android/gms/cast/MediaTrack;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 210
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedTextPosition:I

    const/4 v2, -0x1

    .line 211
    iput v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedAudioPosition:I

    if-eqz v0, :cond_4

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/cast/MediaTrack;

    .line 216
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mVideoTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mActiveTracks:[J

    if-eqz v5, :cond_1

    .line 231
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mActiveTracks:[J

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-wide v8, v5, v7

    .line 232
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    .line 233
    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedAudioPosition:I

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mActiveTracks:[J

    if-eqz v5, :cond_3

    .line 220
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mActiveTracks:[J

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-wide v8, v5, v7

    .line 221
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_2

    .line 222
    iput v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedTextPosition:I

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setUpView(Landroid/view/View;)V
    .locals 9

    .line 151
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 152
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 153
    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$id;->text_empty_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$id;->audio_empty_message:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->partitionTracks()V

    .line 157
    new-instance v4, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->tracks_row_layout:I

    iget-object v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    iget v8, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedTextPosition:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    iput-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    .line 159
    new-instance v4, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->tracks_row_layout:I

    iget-object v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioTracks:Ljava/util/List;

    iget v8, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mSelectedAudioPosition:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    iput-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioVideoAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    .line 162
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioVideoAdapter:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$id;->tabhost:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    .line 166
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    const-string v4, "tab1"

    .line 169
    invoke-virtual {p1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    const/4 v6, 0x4

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mTextTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview1:I

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->text_empty_message:I

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 177
    :goto_1
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_caption_subtitles:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 178
    invoke-virtual {p1, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v0, "tab2"

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioTracks:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 186
    :cond_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview2:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_3

    .line 183
    :cond_3
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 184
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->audio_empty_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 189
    :goto_3
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_caption_audio:I

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->setRetainInstance(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->bundleToMediaInfo(Landroid/os/Bundle;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    .line 129
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 130
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getActiveTrackIds()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mActiveTracks:[J

    .line 131
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->mMediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_caption_no_tracks_available:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->custom_tracks_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->setUpView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_ok:I

    .line 71
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_cancel:I

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 147
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method
