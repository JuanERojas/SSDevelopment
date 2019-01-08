.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field final mControlsDock:Landroid/view/ViewGroup;

.field mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field final mCurrentTime:Landroid/widget/TextView;

.field mCurrentTimeInMs:J

.field final mDescriptionDock:Landroid/view/ViewGroup;

.field final mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mImageView:Landroid/widget/ImageView;

.field mInSeek:Z

.field final mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field mPositions:[J

.field mPositionsLength:I

.field final mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

.field mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field final mSecondaryControlsDock:Landroid/view/ViewGroup;

.field mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field mSecondaryProgressInMs:J

.field mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

.field mSelectedItem:Ljava/lang/Object;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mTempBuilder:Ljava/lang/StringBuilder;

.field mThumbHeroIndex:I

.field mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

.field final mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

.field final mTotalTime:Landroid/widget/TextView;

.field mTotalTimeInMs:J

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2

    .line 264
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    .line 265
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 66
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 67
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    .line 72
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    .line 73
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 85
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    .line 231
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    .line 266
    sget v0, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 267
    sget v0, Landroid/support/v17/leanback/R$id;->description_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 268
    sget v0, Landroid/support/v17/leanback/R$id;->current_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    .line 269
    sget v0, Landroid/support/v17/leanback/R$id;->total_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    .line 270
    sget v0, Landroid/support/v17/leanback/R$id;->playback_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    .line 271
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setAccessibilitySeekListener(Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;)V

    .line 337
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setMax(I)V

    .line 338
    sget p1, Landroid/support/v17/leanback/R$id;->controls_dock:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 339
    sget p1, Landroid/support/v17/leanback/R$id;->secondary_controls_dock:I

    .line 340
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 342
    invoke-virtual {p3, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 343
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    iget-object p3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object p3, p3, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    :cond_1
    sget p1, Landroid/support/v17/leanback/R$id;->thumbs_row:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ThumbsBar;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    return-void
.end method


# virtual methods
.method dispatchItemSelection()V
    .locals 4

    .line 411
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    const/4 v2, 0x0

    .line 416
    invoke-interface {v0, v2, v2, p0, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    .line 422
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v3

    .line 421
    invoke-interface {v0, v1, v2, p0, v3}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getCurrentPositionView()Landroid/widget/TextView;
    .locals 1

    .line 476
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDescriptionViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 353
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    return-object v0
.end method

.method public final getDurationView()Landroid/widget/TextView;
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;
    .locals 2

    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 434
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    .line 437
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->getSecondaryPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object p1

    return-object p1

    .line 439
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object p1

    return-object p1
.end method

.method onBackward()Z
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method onForward()Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    return v0
.end method

.method protected onSetCurrentPositionLabel(J)V
    .locals 1

    .line 485
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 487
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSetDurationLabel(J)V
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 459
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setBufferedPosition(J)V
    .locals 2

    .line 508
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryProgressInMs:J

    long-to-double p1, p1

    .line 510
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p1, p1, v0

    .line 512
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method setCurrentPosition(J)V
    .locals 4

    .line 492
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 493
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 494
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onSetCurrentPositionLabel(J)V

    .line 496
    :cond_0
    iget-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 498
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 500
    iget-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    long-to-double p1, p1

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 503
    :cond_1
    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0

    .line 358
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    return-void
.end method

.method setTotalTime(J)V
    .locals 3

    .line 464
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 465
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 466
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onSetDurationLabel(J)V

    :cond_0
    return-void
.end method

.method startSeek()Z
    .locals 7

    .line 362
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->isSeekEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    goto :goto_2

    .line 369
    :cond_1
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    .line 370
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekStarted()V

    .line 371
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    .line 372
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getSeekPositions()[J

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    .line 373
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/2addr v0, v1

    .line 376
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v0, -0x1

    .line 378
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_1

    .line 381
    :cond_4
    iput v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 383
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->setVisibility(I)V

    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method stopSeek(Z)V
    .locals 2

    .line 391
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    .line 395
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekFinished(Z)V

    .line 396
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-eqz p1, :cond_1

    .line 397
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->reset()V

    :cond_1
    const/4 p1, -0x1

    .line 399
    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 400
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->clearThumbBitmaps()V

    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    .line 402
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    .line 403
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 404
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setVisibility(I)V

    return-void
.end method

.method updateProgressInSeek(Z)V
    .locals 9

    .line 105
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 106
    iget v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const-wide/16 v3, 0x0

    if-lez v2, :cond_7

    .line 107
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iget v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-eqz p1, :cond_4

    if-ltz v0, :cond_1

    .line 112
    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v3, v1, v6

    goto :goto_0

    .line 116
    :cond_0
    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    move v6, v0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v0, v0, -0x1

    .line 122
    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 123
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    aget-wide v2, v1, v0

    move v6, v0

    move-wide v3, v2

    goto :goto_0

    .line 126
    :cond_2
    iget-wide v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    if-lez v0, :cond_3

    add-int/lit8 v6, v0, -0x1

    :cond_3
    move-wide v3, v1

    goto :goto_0

    :cond_4
    if-ltz v0, :cond_5

    if-lez v0, :cond_6

    .line 134
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v3, v1, v6

    goto :goto_0

    :cond_5
    rsub-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_6

    .line 144
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v3, v1, v6

    .line 152
    :cond_6
    :goto_0
    invoke-virtual {p0, v6, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateThumbsInSeek(IZ)V

    goto :goto_2

    .line 154
    :cond_7
    iget-wide v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-float v2, v5

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->getDefaultSeekIncrement()F

    move-result v5

    mul-float v2, v2, v5

    float-to-long v5, v2

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    neg-long v5, v5

    :goto_1
    const/4 p1, 0x0

    add-long v7, v0, v5

    .line 156
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long p1, v7, v0

    if-lez p1, :cond_9

    .line 157
    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    goto :goto_2

    :cond_9
    cmp-long p1, v7, v3

    if-gez p1, :cond_a

    goto :goto_2

    :cond_a
    move-wide v3, v7

    :goto_2
    long-to-double v0, v3

    .line 162
    iget-wide v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v5, v5

    div-double/2addr v0, v5

    .line 163
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v0, v0, v5

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setProgress(I)V

    .line 164
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {p1, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekPositionChanged(J)V

    return-void
.end method

.method updateThumbsInSeek(IZ)V
    .locals 12

    .line 168
    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_b

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    goto/16 :goto_8

    .line 176
    :cond_1
    div-int/lit8 v1, v0, 0x2

    sub-int v2, p1, v1

    const/4 v3, 0x0

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v4, p1, v1

    .line 178
    iget v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 182
    iget v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-gez v5, :cond_3

    move v5, v2

    :cond_2
    move v7, v4

    goto :goto_3

    .line 187
    :cond_3
    iget p2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-le p1, p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 188
    :goto_0
    iget v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int/2addr v5, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 189
    iget v7, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    add-int/2addr v7, v1

    iget v8, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eqz p2, :cond_5

    add-int/2addr v7, v6

    .line 192
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v7, v2

    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-gt v7, v8, :cond_2

    .line 196
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    sub-int v9, v7, p1

    add-int/2addr v9, v1

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    iget v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v11, v7, v11

    add-int/2addr v11, v1

    .line 197
    invoke-virtual {v10, v11}, Landroid/support/v17/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 196
    invoke-virtual {v8, v9, v10}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v5, v6

    .line 200
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v4

    :goto_2
    add-int/lit8 v8, v5, 0x1

    if-lt v7, v8, :cond_6

    .line 204
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    sub-int v9, v7, p1

    add-int/2addr v9, v1

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    iget v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v11, v7, v11

    add-int/2addr v11, v1

    .line 205
    invoke-virtual {v10, v11}, Landroid/support/v17/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 204
    invoke-virtual {v8, v9, v10}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_6
    move v7, v5

    move v5, v2

    .line 210
    :goto_3
    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-eqz p2, :cond_7

    :goto_4
    if-gt v5, v7, :cond_8

    .line 213
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {p1, v5, p2}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-lt v7, v5, :cond_8

    .line 217
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object p2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {p1, v7, p2}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 221
    :cond_8
    :goto_6
    iget p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int p1, v1, p1

    add-int/2addr p1, v2

    const/4 p2, 0x0

    if-ge v3, p1, :cond_9

    .line 223
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {p1, v3, p2}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    add-int/2addr v1, v4

    .line 225
    iget p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int/2addr v1, p1

    add-int/2addr v1, v6

    :goto_7
    if-ge v1, v0, :cond_a

    .line 227
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {p1, v1, p2}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    return-void

    .line 174
    :cond_b
    :goto_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
