.class Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;
.super Landroid/support/v17/leanback/widget/ControlBarPresenter;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;
    }
.end annotation


# static fields
.field private static sChildMarginBigger:I

.field private static sChildMarginBiggest:I


# instance fields
.field private mMoreActionsEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return-void
.end method

.method static formatTime(JLjava/lang/StringBuilder;)V
    .locals 10

    const-wide/16 v0, 0x3c

    .line 189
    div-long v2, p0, v0

    .line 190
    div-long v4, v2, v0

    mul-long v6, v2, v0

    sub-long v8, p0, v6

    mul-long v0, v0, v4

    sub-long p0, v2, v0

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    const/16 v0, 0x30

    const-wide/16 v6, 0xa

    const/16 v1, 0x3a

    if-lez v2, :cond_0

    .line 196
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v2, p0, v6

    if-gez v2, :cond_0

    .line 198
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long p0, v8, v6

    if-gez p0, :cond_1

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_1
    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public areMoreActionsEnabled()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return v0
.end method

.method public enableSecondaryActions(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return-void
.end method

.method public enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V
    .locals 3

    .line 304
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 305
    iget v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 306
    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    .line 309
    iget v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeMarginEnd:I

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 310
    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method getChildMarginBigger(Landroid/content/Context;)I
    .locals 1

    .line 347
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_bigger:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    .line 351
    :cond_0
    sget p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    return p1
.end method

.method getChildMarginBiggest(Landroid/content/Context;)I
    .locals 1

    .line 355
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_biggest:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    .line 359
    :cond_0
    sget p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    return p1
.end method

.method public getCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2

    .line 269
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result p1

    return p1
.end method

.method public getCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2

    .line 273
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2

    .line 285
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result p1

    return p1
.end method

.method public getSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2

    .line 289
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->getSecondaryProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2

    .line 253
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result p1

    return p1
.end method

.method public getTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2

    .line 257
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->getTotalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    .line 322
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 323
    move-object v1, p2

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;

    .line 326
    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v2, v3, :cond_0

    .line 327
    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 328
    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v1, 0x0

    .line 329
    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    .line 332
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 333
    iget-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->showMoreActions(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 315
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 317
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 338
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 339
    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 340
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method public resetFocus(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 0

    .line 299
    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ControlBar;->requestFocus()Z

    return-void
.end method

.method public setCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    .line 261
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0

    .line 265
    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setCurrentTime(J)V

    return-void
.end method

.method public setProgressColor(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 238
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p2, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 240
    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const p2, 0x102000d

    .line 241
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public setSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    .line 277
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0

    .line 281
    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setSecondaryProgress(J)V

    return-void
.end method

.method public setTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    .line 245
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0

    .line 249
    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setTotalTime(J)V

    return-void
.end method

.method public showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 1

    .line 293
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->toggleMoreActions()V

    :cond_0
    return-void
.end method
