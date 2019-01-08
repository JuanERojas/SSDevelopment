.class public Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;
.super Landroid/widget/RelativeLayout;
.source "MiniController.java"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;
    }
.end annotation


# static fields
.field public static final UNDEFINED_STATUS_CODE:I = -0x1


# instance fields
.field private mAutoSetup:Z

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field private mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field private mHandler:Landroid/os/Handler;

.field protected mIcon:Landroid/widget/ImageView;

.field private mIconUri:Landroid/net/Uri;

.field private mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

.field protected mLoading:Landroid/widget/ProgressBar;

.field private mMainContainer:Landroid/view/View;

.field private mPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mPlayPause:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mStreamType:I

.field protected mSubTitle:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field private mUpcomingContainer:Landroid/view/View;

.field private mUpcomingIcon:Landroid/widget/ImageView;

.field private mUpcomingIconUri:Landroid/net/Uri;

.field private mUpcomingItem:Lcom/google/android/gms/cast/MediaQueueItem;

.field private mUpcomingPlay:Landroid/view/View;

.field private mUpcomingStop:Landroid/view/View;

.field private mUpcomingTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 86
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    .line 268
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->loadViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 103
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->mini_controller:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->MiniController:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$styleable;->MiniController_auto_setup:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mAutoSetup:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_mini_controller_pause:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_mini_controller_play:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_mini_controller_stop:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mHandler:Landroid/os/Handler;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->loadViews()V

    .line 115
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpCallbacks()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingItem:Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpcomingIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method private getPauseStopDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 404
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    packed-switch v0, :pswitch_data_0

    .line 410
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadViews()V
    .locals 1

    .line 385
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->icon_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mIcon:Landroid/widget/ImageView;

    .line 386
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->title_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mTitle:Landroid/widget/TextView;

    .line 387
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->subtitle_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mSubTitle:Landroid/widget/TextView;

    .line 388
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->play_pause:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    .line 389
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mLoading:Landroid/widget/ProgressBar;

    .line 390
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->container_current:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mMainContainer:Landroid/view/View;

    .line 391
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 392
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->icon_view_upcoming:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingIcon:Landroid/widget/ImageView;

    .line 393
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->title_view_upcoming:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingTitle:Landroid/widget/TextView;

    .line 394
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->container_upcoming:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingContainer:Landroid/view/View;

    .line 395
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->play_upcoming:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingPlay:Landroid/view/View;

    .line 396
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->stop_upcoming:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingStop:Landroid/view/View;

    return-void
.end method

.method private setLoadingVisibility(Z)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mLoading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setUpCallbacks()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mMainContainer:Landroid/view/View;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingPlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingStop:Landroid/view/View;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$5;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUpcomingIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setUpcomingIcon(Landroid/net/Uri;)V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingIconUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingIconUri:Landroid/net/Uri;

    .line 420
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 423
    :cond_1
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$7;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$7;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 437
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchUpcomingBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V

    return-void
.end method

.method private setUpcomingTitle(Ljava/lang/String;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 309
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 310
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mAutoSetup:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 317
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 318
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mAutoSetup:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeMiniController(Lcom/google/android/libraries/cast/companionlibrary/widgets/IMiniController;)V

    :cond_1
    return-void
.end method

.method public removeOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    :cond_0
    return-void
.end method

.method public setCurrentVisibility(Z)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mMainContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setIcon(Landroid/net/Uri;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mIconUri:Landroid/net/Uri;

    .line 287
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 290
    :cond_1
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 304
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mFetchBitmapTask:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V

    return-void
.end method

.method public setOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mListener:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$OnMiniControllerChangedListener;

    :cond_0
    return-void
.end method

.method public setPlaybackStatus(II)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 373
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 369
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 341
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getPauseStopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 351
    :pswitch_3
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 353
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setLoadingVisibility(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setProgress(II)V
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgressVisibility(Z)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setStreamType(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mStreamType:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUpcomingItem(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 2

    .line 187
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingItem:Lcom/google/android/gms/cast/MediaQueueItem;

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpcomingTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 193
    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpcomingIcon(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 196
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpcomingTitle(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 197
    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setUpcomingIcon(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpcomingVisibility(Z)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mUpcomingContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 p1, p1, 0x1

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setProgressVisibility(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
