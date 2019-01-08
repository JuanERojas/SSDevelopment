.class public Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaybackSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;,
        Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATING:I = 0x1

.field private static final ANIMATION_MULTIPLIER:I = 0x1

.field public static final BG_DARK:I = 0x1

.field public static final BG_LIGHT:I = 0x2

.field public static final BG_NONE:I = 0x0

.field static final BUNDLE_CONTROL_VISIBLE_ON_CREATEVIEW:Ljava/lang/String; = "controlvisible_oncreateview"

.field private static final DEBUG:Z = false

.field private static final IDLE:I = 0x0

.field private static START_FADE_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlaybackSupportFragment"


# instance fields
.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mAnimationTranslateY:I

.field mBackgroundType:I

.field mBackgroundView:Landroid/view/View;

.field mBgAlpha:I

.field mBgDarkColor:I

.field mBgFadeInAnimator:Landroid/animation/ValueAnimator;

.field mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mBgLightColor:I

.field final mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mControlVisible:Z

.field mControlVisibleBeforeOnCreateView:Z

.field mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

.field private final mFadeListener:Landroid/animation/Animator$AnimatorListener;

.field mFadingEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

.field mInSeek:Z

.field mInputEventHandler:Landroid/view/View$OnKeyListener;

.field private mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mMajorFadeTranslateY:I

.field mMinorFadeTranslateY:I

.field private final mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field private final mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private final mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private final mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mOtherRowsCenterToBottom:I

.field mPaddingBottom:I

.field mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

.field mRootView:Landroid/view/View;

.field mRow:Landroid/support/v17/leanback/widget/Row;

.field mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

.field mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

.field mShowTimeMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 264
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 99
    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    .line 140
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 159
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 173
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    const/4 v0, 0x1

    .line 207
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    .line 215
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    .line 216
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 217
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    .line 223
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    .line 275
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    .line 292
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    .line 525
    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 824
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 1069
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 265
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setInitialDelay(J)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 83
    sget v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->START_FADE_OUT:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Landroid/view/InputEvent;)Z
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onInterceptInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/support/v17/leanback/app/PlaybackSupportFragment;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setBgAlpha(I)V

    return-void
.end method

.method private enableVerticalGridAnimations(Z)V
    .locals 1

    .line 308
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    :cond_0
    return-void
.end method

.method static endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 650
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 653
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 502
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    .line 503
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private loadBgAnimator()V
    .locals 4

    .line 508
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    .line 515
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 516
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 517
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 521
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 522
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private loadControlRowAnimator()V
    .locals 4

    .line 529
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    .line 550
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 551
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 552
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 557
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 558
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private loadOtherRowAnimator()V
    .locals 4

    .line 562
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    .line 580
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 581
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 582
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 583
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 586
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .locals 8

    .line 401
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 407
    instance-of v2, p1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 408
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 409
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 410
    iget-object v6, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    if-eqz v6, :cond_0

    .line 411
    iget-object v6, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7, v4, v2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    const/16 v6, 0x6f

    if-eq v4, v6, :cond_3

    packed-switch v4, :pswitch_data_0

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    .line 449
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->tickle()V

    goto :goto_2

    :pswitch_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v5, :cond_6

    .line 427
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->tickle()V

    goto :goto_3

    .line 432
    :cond_3
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-eqz v4, :cond_4

    return v3

    :cond_4
    if-nez v0, :cond_5

    .line 441
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 442
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->hideControlsOverlay(Z)V

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :cond_6
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V
    .locals 1

    .line 633
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    if-nez p2, :cond_1

    .line 636
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-nez p2, :cond_1

    .line 641
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBgAlpha(I)V
    .locals 1

    .line 301
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    .line 302
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    .line 730
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-void
.end method

.method private setupPresenter()V
    .locals 4

    .line 1057
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    .line 1061
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    .line 1062
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    goto :goto_0

    .line 1063
    :cond_0
    instance-of v1, v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    if-eqz v1, :cond_1

    .line 1064
    check-cast v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    :cond_1
    :goto_0
    return-void
.end method

.method private setupRow()V
    .locals 3

    .line 1043
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 1045
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1046
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 1052
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startFadeTimer()V
    .locals 4

    .line 495
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->START_FADE_OUT:I

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopFadeTimer()V
    .locals 2

    .line 489
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 807
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 808
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgDarkColor:I

    .line 809
    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 813
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgLightColor:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 819
    :goto_0
    :pswitch_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 820
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setBgAlpha(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fadeOut()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, v0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBackgroundType()I
    .locals 1

    .line 803
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    return v0
.end method

.method public getFadeCompleteListener()Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    return-object v0
.end method

.method public getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    .line 1174
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 625
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 616
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    return v0
.end method

.method public isFadingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 3

    .line 1017
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected onBufferingStateChanged(Z)V
    .locals 1

    .line 1149
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1152
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->show()V

    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 757
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 759
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    .line 760
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowsCenterToBottom:I

    .line 762
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    .line 764
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgDarkColor:I

    .line 766
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgLightColor:I

    .line 768
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mShowTimeMs:I

    .line 770
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMajorFadeTranslateY:I

    .line 772
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMinorFadeTranslateY:I

    .line 774
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadBgAnimator()V

    .line 775
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadControlRowAnimator()V

    .line 776
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadOtherRowAnimator()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 860
    sget p3, Landroid/support/v17/leanback/R$layout;->lb_playback_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    .line 861
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    sget p2, Landroid/support/v17/leanback/R$id;->playback_fragment_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    .line 862
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 864
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez p1, :cond_0

    .line 865
    new-instance p1, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 866
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    iget-object p3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 867
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 868
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 870
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez p1, :cond_1

    .line 871
    new-instance p1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance p2, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {p2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    invoke-direct {p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    goto :goto_0

    .line 873
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 875
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 876
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    const/16 p1, 0xff

    .line 878
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    .line 879
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->updateBackground()V

    .line 880
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 881
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 883
    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 885
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 961
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    .line 964
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 954
    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    .line 955
    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    .line 956
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method protected onError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 916
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    .line 919
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 925
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 470
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 472
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 474
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->startFadeTimer()V

    .line 481
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    .line 482
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    .line 483
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 898
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 899
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupChildFragmentLayout()V

    .line 900
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 901
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 908
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    .line 911
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 458
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 461
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    .line 462
    iget-boolean p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 463
    invoke-virtual {p0, p2, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    .line 464
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    :cond_0
    return-void
.end method

.method public resetFocus()V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 111
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 110
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 1032
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 1033
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupRow()V

    .line 1034
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupPresenter()V

    .line 1035
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenterAlignment()V

    .line 1037
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_0
    return-void
.end method

.method public setBackgroundType(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 795
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid background type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 789
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    if-eq p1, v0, :cond_0

    .line 790
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    .line 791
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->updateBackground()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1

    .line 321
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_1

    .line 322
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    .line 323
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    if-eqz p1, :cond_0

    .line 327
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->startFadeTimer()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFadeCompleteListener(Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 367
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setControlsOverlayAutoHideEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0

    .line 893
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0

    .line 941
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0

    .line 933
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method public final setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 383
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0

    .line 949
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 0

    .line 973
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 974
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupRow()V

    .line 975
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupPresenter()V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    .line 987
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 988
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupPresenter()V

    .line 989
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenterAlignment()V

    return-void
.end method

.method setPlaybackRowPresenterAlignment()V
    .locals 6

    .line 993
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 996
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 997
    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 998
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 999
    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 1000
    new-instance v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 1002
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    const/high16 v5, 0x42c80000    # 100.0f

    .line 1003
    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    const/4 v5, 0x1

    .line 1004
    new-array v5, v5, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v4, v5, v1

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 1006
    aget-object v4, v0, v2

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v5, v3}, Landroid/support/v17/leanback/widget/Presenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    return-void
.end method

.method setSeekMode(Z)V
    .locals 4

    .line 1116
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1119
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    .line 1120
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 1121
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-eqz p1, :cond_1

    .line 1122
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    :cond_1
    const/4 p1, 0x1

    .line 1125
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    .line 1126
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 1128
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1129
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    .line 1130
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    .line 722
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 723
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    iput-boolean p2, p1, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 724
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 725
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 739
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 740
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 745
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 746
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 750
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingTop()I

    move-result v1

    .line 751
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    .line 750
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    const/4 v0, 0x2

    .line 752
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method showControlsOverlay(ZZ)V
    .locals 2

    .line 665
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 666
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    .line 673
    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 676
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 677
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 678
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    :cond_2
    return-void

    .line 683
    :cond_3
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    .line 684
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-nez v0, :cond_4

    .line 686
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    .line 689
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 690
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMinorFadeTranslateY:I

    goto :goto_1

    :cond_6
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMajorFadeTranslateY:I

    :goto_1
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAnimationTranslateY:I

    if-eqz p1, :cond_7

    .line 694
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 695
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 697
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    goto :goto_2

    .line 699
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 700
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 702
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    :goto_2
    if-eqz p2, :cond_9

    .line 705
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_8

    sget p1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    goto :goto_3

    :cond_8
    sget p1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public tickle()V
    .locals 1

    .line 396
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    return-void
.end method
