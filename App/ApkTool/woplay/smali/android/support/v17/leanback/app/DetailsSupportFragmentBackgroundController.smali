.class public Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;
.super Ljava/lang/Object;
.source "DetailsSupportFragmentBackgroundController.java"


# instance fields
.field mCanUseHost:Z

.field mCoverBitmap:Landroid/graphics/Bitmap;

.field final mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

.field mInitialControlVisible:Z

.field private mLastVideoSupportFragmentForGlueHost:Landroid/support/v4/app/Fragment;

.field mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

.field mParallaxDrawableMaxOffset:I

.field mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

.field mSolidColor:I

.field mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCanUseHost:Z

    .line 118
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mInitialControlVisible:Z

    .line 130
    iget-object v0, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 131
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each DetailsSupportFragment is allowed to initialize DetailsSupportFragmentBackgroundController once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_0
    iput-object p0, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    .line 135
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    return-void
.end method


# virtual methods
.method public canNavigateToVideoSupportFragment()Z
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .locals 3

    .line 398
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onCreateGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 399
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->showControlsOverlay(Z)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->hideControlsOverlay(Z)V

    :goto_0
    return-object v0
.end method

.method disableVideoParallax()Z
    .locals 1

    .line 336
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->stopParallax()V

    .line 338
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->isVideoVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableParallax()V
    .locals 7

    .line 150
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_cover_drawable_parallax_movement:I

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    :cond_0
    new-instance v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    invoke-direct {v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;-><init>()V

    .line 156
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 157
    new-instance v3, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    sget-object v4, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v6, 0x1

    neg-int v0, v0

    aput v0, v5, v6

    .line 160
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    .line 157
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->enableParallax(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;)V

    return-void
.end method

.method public enableParallax(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    if-eqz v0, :cond_1

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mSolidColor:I

    if-eqz v0, :cond_2

    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    .line 197
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 199
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_3

    .line 200
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "enableParallaxDrawable must be called before enableVideoPlayback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_3
    new-instance v6, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    .line 204
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    .line 205
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;-><init>(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V

    iput-object v6, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    .line 209
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    new-instance p1, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    .line 213
    invoke-virtual {p3}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;

    move-result-object p3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;-><init>(Landroid/support/v17/leanback/media/PlaybackGlue;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    return-void
.end method

.method public final findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getBottomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 363
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getBottomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getCoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getParallaxDrawableMaxOffset()I
    .locals 1

    .line 489
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    return v0
.end method

.method public final getPlaybackGlue()Landroid/support/v17/leanback/media/PlaybackGlue;
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    return-object v0
.end method

.method public final getSolidColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 449
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mSolidColor:I

    return v0
.end method

.method public onCreateGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .locals 2

    .line 394
    new-instance v0, Landroid/support/v17/leanback/app/VideoSupportFragmentGlueHost;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/app/VideoSupportFragment;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/VideoSupportFragmentGlueHost;-><init>(Landroid/support/v17/leanback/app/VideoSupportFragment;)V

    return-object v0
.end method

.method public onCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 379
    new-instance v0, Landroid/support/v17/leanback/app/VideoSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/VideoSupportFragment;-><init>()V

    return-object v0
.end method

.method onStart()V
    .locals 2

    .line 313
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCanUseHost:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCanUseHost:Z

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 317
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mLastVideoSupportFragmentForGlueHost:Landroid/support/v4/app/Fragment;

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    :cond_1
    return-void
.end method

.method onStop()V
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->pause()V

    :cond_0
    return-void
.end method

.method public final setCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 427
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    .line 428
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 429
    instance-of v0, p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    if-eqz v0, :cond_0

    .line 430
    check-cast p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final setParallaxDrawableMaxOffset(I)V
    .locals 1

    .line 475
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-eqz v0, :cond_0

    .line 476
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "enableParallax already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    return-void
.end method

.method public final setSolidColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 460
    iput p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mSolidColor:I

    .line 461
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->getBottomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 462
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 463
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setupVideoPlayback(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 3
    .param p1    # Landroid/support/v17/leanback/media/PlaybackGlue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 231
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-ne v0, p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 238
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 241
    :goto_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 242
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->setPlaybackGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 243
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mCanUseHost:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 244
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mLastVideoSupportFragmentForGlueHost:Landroid/support/v4/app/Fragment;

    .line 245
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 249
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    goto :goto_2

    .line 246
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 247
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mLastVideoSupportFragmentForGlueHost:Landroid/support/v4/app/Fragment;

    :cond_4
    :goto_2
    return-void
.end method

.method public final switchToRows()V
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->switchToRows()V

    return-void
.end method

.method public final switchToVideo()V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->switchToVideo()V

    return-void
.end method

.method switchToVideoBeforeCreate()V
    .locals 2

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 277
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->mInitialControlVisible:Z

    return-void
.end method
