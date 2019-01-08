.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$HighQualityAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ShuffleAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;
    }
.end annotation


# instance fields
.field private mBufferedProgressMs:J

.field private mCurrentTimeMs:J

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mItem:Ljava/lang/Object;

.field private mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field private mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mTotalTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 790
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 783
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    .line 784
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mItem:Ljava/lang/Object;

    return-void
.end method

.method static createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 738
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 739
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 740
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 741
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 742
    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static getIconHighlightColor(Landroid/content/Context;)I
    .locals 4

    .line 747
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->playbackControlsIconHighlightColor:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    .line 752
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroid/support/v17/leanback/R$color;->lb_playback_icon_highlight_no_theme:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method static getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 756
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 757
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->playbackControlsActionIcons:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 761
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 763
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 764
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method


# virtual methods
.method public getActionForKeyCode(I)Landroid/support/v17/leanback/widget/Action;
    .locals 1

    .line 1054
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1058
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object p1

    return-object p1
.end method

.method public getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;
    .locals 3

    .line 1065
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_0

    .line 1066
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 1068
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1069
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Action;

    .line 1070
    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1046
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    return-wide v0
.end method

.method public getBufferedProgress()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getBufferedPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getBufferedProgressLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1039
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 987
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    return-wide v0
.end method

.method public getCurrentTime()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 971
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getCurrentTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getCurrentTimeLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 980
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 925
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    return-wide v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 830
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    .line 797
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 855
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 862
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 908
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getTotalTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getTotalTimeLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 917
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    return-wide v0
.end method

.method public setBufferedPosition(J)V
    .locals 3

    .line 1016
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 1017
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    .line 1018
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onBufferedPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_0
    return-void
.end method

.method public setBufferedProgress(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 998
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    return-void
.end method

.method public setBufferedProgressLong(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    return-void
.end method

.method public setCurrentPosition(J)V
    .locals 3

    .line 956
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 957
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    .line 958
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz p1, :cond_0

    .line 959
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onCurrentPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_0
    return-void
.end method

.method public setCurrentTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 936
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTimeLong(J)V

    return-void
.end method

.method public setCurrentTimeLong(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .line 893
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 894
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    .line 895
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz p1, :cond_0

    .line 896
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onDurationChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 820
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 808
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V
    .locals 0

    .line 1081
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    return-void
.end method

.method public final setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    .line 839
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-void
.end method

.method public final setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    .line 848
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 873
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    return-void
.end method

.method public setTotalTimeLong(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    return-void
.end method
