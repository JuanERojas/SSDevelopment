.class public Landroid/support/v17/leanback/app/PlaybackFragment;
.super Landroid/app/Fragment;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;,
        Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

.field private static final TAG:Ljava/lang/String; = "PlaybackFragment"


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

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

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

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

.field mShowTimeMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 271
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 104
    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    .line 145
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 164
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 178
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/support/v17/leanback/app/PlaybackFragment$1;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    const/4 v0, 0x1

    .line 214
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    .line 222
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    .line 223
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 224
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    .line 230
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    .line 282
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    .line 299
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    .line 532
    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 533
    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 831
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 1076
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setInitialDelay(J)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/app/PlaybackFragment;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 88
    sget v0, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/view/InputEvent;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->onInterceptInputEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/support/v17/leanback/app/PlaybackFragment;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setBgAlpha(I)V

    return-void
.end method

.method private enableVerticalGridAnimations(Z)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    :cond_0
    return-void
.end method

.method static endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 657
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 660
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 509
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    .line 510
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private loadBgAnimator()V
    .locals 4

    .line 515
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 522
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 523
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 524
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 525
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 527
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 528
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private loadControlRowAnimator()V
    .locals 4

    .line 536
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 557
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 558
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 559
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 560
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 562
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 564
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 565
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private loadOtherRowAnimator()V
    .locals 4

    .line 569
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 587
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 588
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 589
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 590
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 593
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 594
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .locals 8

    .line 408
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 414
    instance-of v2, p1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 415
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 416
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 417
    iget-object v6, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    if-eqz v6, :cond_0

    .line 418
    iget-object v6, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

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

    .line 456
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->tickle()V

    goto :goto_2

    :pswitch_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v5, :cond_6

    .line 434
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->tickle()V

    goto :goto_3

    .line 439
    :cond_3
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v4, :cond_4

    return v3

    :cond_4
    if-nez v0, :cond_5

    .line 448
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 449
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

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

    .line 640
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    if-nez p2, :cond_1

    .line 643
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-nez p2, :cond_1

    .line 648
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBgAlpha(I)V
    .locals 1

    .line 308
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    .line 309
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    .line 737
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-void
.end method

.method private setupPresenter()V
    .locals 4

    .line 1064
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    .line 1068
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    .line 1069
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    goto :goto_0

    .line 1070
    :cond_0
    instance-of v1, v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    if-eqz v1, :cond_1

    .line 1071
    check-cast v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    :cond_1
    :goto_0
    return-void
.end method

.method private setupRow()V
    .locals 3

    .line 1050
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 1052
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1055
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 1059
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startFadeTimer()V
    .locals 4

    .line 502
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopFadeTimer()V
    .locals 2

    .line 496
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 814
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 815
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgDarkColor:I

    .line 816
    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 820
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgLightColor:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 826
    :goto_0
    :pswitch_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 827
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setBgAlpha(I)V

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

    .line 603
    invoke-virtual {p0, v0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBackgroundType()I
    .locals 1

    .line 810
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    return v0
.end method

.method public getFadeCompleteListener()Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    return-object v0
.end method

.method public getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    .line 1181
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    return v0
.end method

.method public isFadingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 3

    .line 1024
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected onBufferingStateChanged(Z)V
    .locals 1

    .line 1156
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->show()V

    goto :goto_0

    .line 1161
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 764
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 766
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    .line 767
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowsCenterToBottom:I

    .line 769
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    .line 771
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgDarkColor:I

    .line 773
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgLightColor:I

    .line 775
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mShowTimeMs:I

    .line 777
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMajorFadeTranslateY:I

    .line 779
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMinorFadeTranslateY:I

    .line 781
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadBgAnimator()V

    .line 782
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadControlRowAnimator()V

    .line 783
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadOtherRowAnimator()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 867
    sget p3, Landroid/support/v17/leanback/R$layout;->lb_playback_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    .line 868
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    sget p2, Landroid/support/v17/leanback/R$id;->playback_fragment_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    .line 869
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 871
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez p1, :cond_0

    .line 872
    new-instance p1, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p1}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 873
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    sget p2, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    iget-object p3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 874
    invoke-virtual {p1, p2, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 875
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 877
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez p1, :cond_1

    .line 878
    new-instance p1, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance p2, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {p2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    invoke-direct {p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    goto :goto_0

    .line 880
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 882
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 883
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    const/16 p1, 0xff

    .line 885
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    .line 886
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->updateBackground()V

    .line 887
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 888
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 890
    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 892
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 968
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    .line 971
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 961
    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    .line 962
    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    .line 963
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method protected onError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 923
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackFragment;->START_FADE_OUT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 932
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 477
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 479
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 481
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->startFadeTimer()V

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    .line 489
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    .line 490
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 905
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 906
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupChildFragmentLayout()V

    .line 907
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 908
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 915
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    .line 918
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

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

    .line 465
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 468
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    .line 469
    iget-boolean p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 470
    invoke-virtual {p0, p2, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    .line 471
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

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

    .line 112
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 116
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 115
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 1039
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 1040
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupRow()V

    .line 1041
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    .line 1042
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenterAlignment()V

    .line 1044
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_0
    return-void
.end method

.method public setBackgroundType(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 802
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid background type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 796
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    if-eq p1, v0, :cond_0

    .line 797
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    .line 798
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->updateBackground()V

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

    .line 328
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_1

    .line 329
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    .line 330
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->startFadeTimer()V

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFadeCompleteListener(Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 374
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setControlsOverlayAutoHideEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0

    .line 900
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0

    .line 948
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0

    .line 940
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method public final setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 390
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0

    .line 956
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 0

    .line 980
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 981
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupRow()V

    .line 982
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0

    .line 994
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 995
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    .line 996
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenterAlignment()V

    return-void
.end method

.method setPlaybackRowPresenterAlignment()V
    .locals 6

    .line 1000
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1003
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1004
    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 1005
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1006
    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 1007
    new-instance v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 1009
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    const/high16 v5, 0x42c80000    # 100.0f

    .line 1010
    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    const/4 v5, 0x1

    .line 1011
    new-array v5, v5, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v4, v5, v1

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 1013
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

    .line 1115
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    return-void
.end method

.method setSeekMode(Z)V
    .locals 4

    .line 1123
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1126
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    .line 1127
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 1128
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz p1, :cond_1

    .line 1129
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    :cond_1
    const/4 p1, 0x1

    .line 1132
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    .line 1133
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 1135
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1136
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    .line 1137
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

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

    .line 722
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    .line 729
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;->mPosition:I

    .line 730
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    iput-boolean p2, p1, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;->mSmooth:Z

    .line 731
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 746
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 747
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 752
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 753
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 757
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingTop()I

    move-result v1

    .line 758
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    .line 757
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    const/4 v0, 0x2

    .line 759
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 612
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    return-void
.end method

.method showControlsOverlay(ZZ)V
    .locals 2

    .line 672
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 673
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    return-void

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    .line 680
    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 683
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 684
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 685
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    :cond_2
    return-void

    .line 690
    :cond_3
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    .line 691
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-nez v0, :cond_4

    .line 693
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    .line 696
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 697
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMinorFadeTranslateY:I

    goto :goto_1

    :cond_6
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMajorFadeTranslateY:I

    :goto_1
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAnimationTranslateY:I

    if-eqz p1, :cond_7

    .line 701
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 702
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 704
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    goto :goto_2

    .line 706
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 707
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 709
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    :goto_2
    if-eqz p2, :cond_9

    .line 712
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_8

    sget p1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    goto :goto_3

    :cond_8
    sget p1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public tickle()V
    .locals 1

    .line 403
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    return-void
.end method
