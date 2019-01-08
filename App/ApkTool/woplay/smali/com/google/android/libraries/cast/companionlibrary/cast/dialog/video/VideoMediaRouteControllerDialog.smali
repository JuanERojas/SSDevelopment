.class public Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;
.super Landroid/support/v7/app/MediaRouteControllerDialog;
.source "VideoMediaRouteControllerDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCastConsumerImpl:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

.field private mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconContainer:Landroid/view/View;

.field private mIconUri:Landroid/net/Uri;

.field private mLoading:Landroid/widget/ProgressBar;

.field private mPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mPausePlay:Landroid/widget/ImageView;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mState:I

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mStreamType:I

.field private mSubTitle:Landroid/widget/TextView;

.field private mTextContainer:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;

    .line 53
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 83
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$style;->CCLCastDialog:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mState:I

    .line 88
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastConsumerImpl:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastConsumerImpl:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->addVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_media_route_controller_pause:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_media_route_controller_play:I

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_media_route_controller_stop:I

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mStopDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->TAG:Ljava/lang/String;

    const-string v1, "Failed to update the content of dialog"

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->updateMetadata()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->adjustControlsVisibility(Z)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->showTargetActivity()V

    return-void
.end method

.method private adjustControlsVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    xor-int/lit8 p1, p1, 0x1

    .line 261
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setLoadingVisibility(Z)V

    return-void
.end method

.method private getPauseStopDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 244
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mStreamType:I

    packed-switch v0, :pswitch_data_0

    .line 250
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideControls(ZI)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIconContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mTextContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mEmptyText:Landroid/widget/TextView;

    if-nez p2, :cond_1

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_no_media_info:I

    :cond_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private loadViews(Landroid/view/View;)V
    .locals 1

    .line 335
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->iconView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIcon:Landroid/widget/ImageView;

    .line 336
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->iconContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIconContainer:Landroid/view/View;

    .line 337
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mTextContainer:Landroid/view/View;

    .line 338
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->playPauseView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    .line 339
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->titleView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mTitle:Landroid/widget/TextView;

    .line 340
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->subTitleView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mSubTitle:Landroid/widget/TextView;

    .line 341
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->loadingView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mLoading:Landroid/widget/ProgressBar;

    .line 342
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->emptyView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mEmptyText:Landroid/widget/TextView;

    return-void
.end method

.method private setLoadingVisibility(Z)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mLoading:Landroid/widget/ProgressBar;

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

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mTextContainer:Landroid/view/View;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTargetActivity()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 324
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getTargetActivity()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTargetActivityInvoked(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start the target activity due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private updateMetadata()V
    .locals 4

    const/4 v0, 0x1

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getRemoteMediaInformation()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/TransientNetworkDisconnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/exceptions/NoConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 157
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_no_media_info:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->hideControls(ZI)V

    return-void

    .line 160
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mStreamType:I

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->hideControls(ZI)V

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mTitle:Landroid/widget/TextView;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mSubTitle:Landroid/widget/TextView;

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setIcon(Landroid/net/Uri;)V

    return-void

    .line 153
    :catch_0
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_short:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->hideControls(ZI)V

    return-void
.end method

.method private updatePlayPauseState(I)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 237
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 234
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->adjustControlsVisibility(Z)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->adjustControlsVisibility(Z)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->getPauseStopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->adjustControlsVisibility(Z)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setLoadingVisibility(Z)V

    .line 211
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mState:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 212
    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 213
    sget p1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_no_media_info:I

    invoke-direct {p0, v2, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->hideControls(ZI)V

    goto :goto_0

    .line 215
    :cond_0
    iget p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mStreamType:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 221
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getIdleReason()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 223
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->adjustControlsVisibility(Z)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setLoadingVisibility(Z)V

    goto :goto_0

    .line 217
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mPausePlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setLoadingVisibility(Z)V

    :cond_2
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


# virtual methods
.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 270
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->custom_media_route_controller_controls_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 273
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->loadViews(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPlaybackStatus()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mState:I

    .line 275
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->updateMetadata()V

    .line 276
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mState:I

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->updatePlayPauseState(I)V

    .line 277
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->setUpCallbacks()V

    return-object p1
.end method

.method protected onStop()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastConsumerImpl:Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumerImpl;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->removeVideoCastConsumer(Lcom/google/android/libraries/cast/companionlibrary/cast/callbacks/VideoCastConsumer;)V

    .line 124
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mCastManager:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 128
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 130
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->onStop()V

    return-void
.end method

.method public setIcon(Landroid/net/Uri;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIconUri:Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    .line 174
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->cancel(Z)Z

    .line 183
    :cond_2
    new-instance p1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$2;

    invoke-direct {p1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;)V

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    .line 193
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mFetchBitmap:Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialog;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute(Landroid/net/Uri;)V

    return-void
.end method
