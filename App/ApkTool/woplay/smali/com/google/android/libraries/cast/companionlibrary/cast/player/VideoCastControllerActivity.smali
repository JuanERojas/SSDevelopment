.class public Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VideoCastControllerActivity.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;


# static fields
.field public static final DIALOG_TAG:Ljava/lang/String; = "dialog"

.field private static final TAG:Ljava/lang/String;

.field public static final TASK_TAG:Ljava/lang/String; = "task"


# instance fields
.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mClosedCaptionIcon:Landroid/widget/ImageButton;

.field private mControllers:Landroid/view/View;

.field private mEnd:Landroid/widget/TextView;

.field private mImmersive:Z

.field private mLine2:Landroid/widget/TextView;

.field private mListener:Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;

.field private mLiveText:Landroid/widget/TextView;

.field private mLoading:Landroid/widget/ProgressBar;

.field private mNextPreviousVisibilityPolicy:I

.field private mPageView:Landroid/view/View;

.field private mPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlaybackControls:Landroid/view/View;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSkipNext:Landroid/widget/ImageButton;

.field private mSkipPrevious:Landroid/widget/ImageButton;

.field private mStart:Landroid/widget/TextView;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mStreamType:I

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mVolumeIncrement:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    .line 78
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x2

    .line 102
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mNextPreviousVisibilityPolicy:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mListener:Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStart:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->showTracksChooserDialog()V

    return-void
.end method

.method private loadAndSetupViews()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_pause_circle_white_80dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_play_circle_white_80dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_stop_circle_white_80dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->pageview:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPageView:Landroid/view/View;

    .line 166
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->play_pause_toggle:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayPause:Landroid/widget/ImageButton;

    .line 167
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->live_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLiveText:Landroid/widget/TextView;

    .line 168
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->start_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStart:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->end_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mEnd:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSeekbar:Landroid/widget/SeekBar;

    .line 171
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textview2:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->progressbar1:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    .line 173
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->controllers:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mControllers:Landroid/view/View;

    .line 174
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->cc:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    .line 175
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->next:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    .line 176
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->previous:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    .line 177
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->playback_controls:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlaybackControls:Landroid/view/View;

    .line 178
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->miniController1:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setCurrentVisibility(Z)V

    const/4 v0, 0x2

    .line 179
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setClosedCaptionState(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayPause:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setImmersive()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 502
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    xor-int/lit8 v0, v0, 0x2

    .line 507
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    xor-int/lit8 v0, v0, 0x4

    .line 511
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    xor-int/lit16 v0, v0, 0x1000

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    const/4 v0, 0x1

    .line 517
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setImmersive(Z)V

    :cond_4
    return-void
.end method

.method private setUpActionBar()V
    .locals 2

    .line 292
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 293
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 294
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showTracksChooserDialog()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException;,
            Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 286
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 287
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->newInstance(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    move-result-object v1

    const-string v2, "dialog"

    .line 288
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public adjustControllersForLiveStream(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 307
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLiveText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStart:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mEnd:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method

.method public closeActivity()V
    .locals 0

    .line 478
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-wide v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mVolumeIncrement:D

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onDispatchVolumeKeyEvent(Landroid/view/KeyEvent;D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->cast_activity:I

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->loadAndSetupViews()V

    .line 111
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 112
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getCastConfiguration()Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->isCastControllerImmersive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mImmersive:Z

    .line 113
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getVolumeStep()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mVolumeIncrement:D

    .line 115
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setUpActionBar()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "task"

    .line 125
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    if-nez v1, :cond_1

    .line 130
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->newInstance(Landroid/os/Bundle;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    move-result-object p1

    .line 131
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setOnVideoCastControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setOnVideoCastControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;)V

    .line 135
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mListener:Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;->onConfigurationChanged()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 141
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 142
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$menu;->cast_player_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->media_route_menu_item:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addMediaRouterButton(Landroid/view/Menu;I)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueueItemsUpdated(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 336
    :goto_1
    iget p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mNextPreviousVisibilityPolicy:I

    packed-switch p2, :pswitch_data_0

    .line 374
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->TAG:Ljava/lang/String;

    const-string p2, "onQueueItemsUpdated(): Invalid NextPreviousPolicy has been set"

    invoke-static {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 352
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 354
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4

    :pswitch_1
    if-eqz p1, :cond_2

    .line 359
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 362
    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_2
    if-eqz v2, :cond_3

    .line 366
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4

    :pswitch_2
    const/16 p2, 0x8

    if-eqz p1, :cond_4

    .line 339
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_3

    .line 342
    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    if-eqz v2, :cond_5

    .line 345
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4

    .line 348
    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSkipPrevious:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 488
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 489
    iget-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mImmersive:Z

    if-eqz p1, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setImmersive()V

    :cond_0
    return-void
.end method

.method public setClosedCaptionState(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 328
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClosedCaptionState(): Invalid state requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 321
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mClosedCaptionIcon:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPageView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPageView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPageView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNextPreviousVisibilityPolicy(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mNextPreviousVisibilityPolicy:I

    return-void
.end method

.method public setOnVideoCastControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 459
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mListener:Lcom/google/android/libraries/cast/companionlibrary/cast/player/OnVideoCastControllerListener;

    :cond_0
    return-void
.end method

.method public setPlaybackStatus(I)V
    .locals 4

    .line 380
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackStatus(): state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 418
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_loading:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 396
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mControllers:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 401
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 400
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 383
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStreamType:I

    if-ne p1, v0, :cond_0

    .line 386
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 392
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 391
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mControllers:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 404
    :pswitch_3
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStreamType:I

    if-ne p1, v0, :cond_1

    .line 405
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mControllers:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 410
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 409
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_loading:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
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

.method public setStreamType(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStreamType:I

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLine2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showLoading(Z)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mLoading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public updateControllersStatus(Z)V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mControllers:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 472
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStreamType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->adjustControllersForLiveStream(Z)V

    :cond_2
    return-void
.end method

.method public updateSeekbar(II)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 429
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 430
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mStart:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->formatMillis(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->mEnd:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->formatMillis(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
