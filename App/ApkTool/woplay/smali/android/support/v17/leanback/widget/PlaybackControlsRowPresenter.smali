.class public Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.source "PlaybackControlsRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;
    }
.end annotation


# static fields
.field static sShadowZ:F


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field private final mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field private final mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

.field mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

.field private mProgressColor:I

.field private mProgressColorSet:Z

.field private mSecondaryActionsHidden:Z

.field private mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    .line 158
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColor:I

    .line 167
    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    .line 181
    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    .line 204
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->setSelectEffectEnabled(Z)V

    .line 206
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 207
    new-instance p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_playback_controls:I

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;-><init>(I)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    .line 208
    new-instance p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_control_bar:I

    invoke-direct {p1, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    .line 210
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    .line 211
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    .line 212
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    .line 213
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    return-void
.end method

.method private getDefaultBackgroundColor(Landroid/content/Context;)I
    .locals 4

    .line 314
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->defaultBrandColor:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$color;->lb_default_brand_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getDefaultProgressColor(Landroid/content/Context;)I
    .locals 4

    .line 322
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->playbackProgressPrimaryColor:I

    const/4 v3, 0x1

    .line 324
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$color;->lb_playback_progress_color_no_theme:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private initRow(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
    .locals 3

    .line 340
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 341
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iput v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginStart:I

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginEnd:I

    .line 344
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 345
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 346
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColorSet:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColor:I

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 347
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->getDefaultProgressColor(Landroid/content/Context;)I

    move-result v2

    .line 346
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setProgressColor(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    .line 348
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColorSet:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    goto :goto_1

    :cond_1
    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

    .line 349
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v2

    .line 348
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setBackgroundColor(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;I)V

    .line 350
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    .line 353
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 354
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryActionsHidden:Z

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    :cond_2
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$3;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;)V

    return-void
.end method

.method private updateCardLayout(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;I)V
    .locals 4

    .line 418
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCardRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 419
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCardRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 423
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 424
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_0

    .line 427
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 428
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 429
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 430
    iget-object p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->setOutline(Landroid/view/View;)V

    .line 432
    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V

    goto :goto_1

    .line 434
    :cond_0
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 435
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 436
    iget p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginStart:I

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 437
    iget p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginEnd:I

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 438
    iget-object p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColorSet:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    .line 439
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v2

    .line 438
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 440
    iget-object p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->setOutline(Landroid/view/View;)V

    .line 441
    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {p2, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V

    .line 443
    :goto_1
    iget-object p2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public areSecondaryActionsHidden()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryActionsHidden:Z

    return v0
.end method

.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    .line 332
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_playback_controls_row:I

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 334
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V

    .line 335
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->initRow(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 251
    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    return v0
.end method

.method public getOnActionClickedListener()Landroid/support/v17/leanback/widget/OnActionClickedListener;
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-object v0
.end method

.method public getProgressColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 269
    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColor:I

    return v0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    .line 373
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 375
    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    .line 376
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 378
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryActionsHidden:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->enableSecondaryActions(Z)V

    .line 380
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 385
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 388
    :cond_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :goto_0
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 395
    :cond_2
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->updateCardLayout(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;I)V

    goto :goto_2

    .line 392
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x2

    .line 393
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->updateCardLayout(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;I)V

    .line 399
    :goto_2
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 400
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 401
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 402
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    iput-object p1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    .line 403
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 405
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 406
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 407
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    iput-object p1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    .line 408
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getTotalTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    .line 412
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getCurrentTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    .line 413
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getBufferedProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    .line 414
    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    return-void
.end method

.method public onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 0

    .line 310
    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 472
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 473
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 481
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 482
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 464
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    if-eqz p2, :cond_0

    .line 466
    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->dispatchItemSelection()V

    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 4

    .line 449
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    .line 450
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    .line 452
    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 455
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 456
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    const/4 v0, 0x0

    .line 457
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    .line 459
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 241
    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColorSet:Z

    return-void
.end method

.method public setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0

    .line 227
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 259
    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColor:I

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColorSet:Z

    return-void
.end method

.method public setSecondaryActionsHidden(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryActionsHidden:Z

    return-void
.end method

.method public showBottomSpace(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;Z)V
    .locals 0

    .line 294
    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBottomSpacer:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
    .locals 2

    .line 302
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    .line 303
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->resetFocus(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    :cond_0
    return-void
.end method
