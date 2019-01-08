.class public Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;
.super Ljava/lang/Object;
.source "DetailsFragmentBackgroundController.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCanUseHost:Z

.field mCoverBitmap:Landroid/graphics/Bitmap;

.field final mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

.field mInitialControlVisible:Z

.field private mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

.field mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

.field mParallaxDrawableMaxOffset:I

.field mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

.field mSolidColor:I

.field mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    .line 123
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    .line 135
    iget-object v0, p1, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 136
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each DetailsFragment is allowed to initialize DetailsFragmentBackgroundController once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_0
    iput-object p0, p1, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    .line 140
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    return-void
.end method


# virtual methods
.method public canNavigateToVideoFragment()Z
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

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

    .line 403
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onCreateGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 404
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->showControlsOverlay(Z)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->hideControlsOverlay(Z)V

    :goto_0
    return-object v0
.end method

.method disableVideoParallax()Z
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->stopParallax()V

    .line 343
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->isVideoVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableParallax()V
    .locals 7

    .line 155
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-static {v0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_cover_drawable_parallax_movement:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 160
    :cond_0
    new-instance v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    invoke-direct {v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;-><init>()V

    .line 161
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 162
    new-instance v3, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    sget-object v4, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v6, 0x1

    neg-int v0, v0

    aput v0, v5, v6

    .line 165
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    .line 162
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->enableParallax(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;)V

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

    .line 193
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    if-eqz v0, :cond_1

    .line 198
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    if-eqz v0, :cond_2

    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    .line 202
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 204
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_3

    .line 205
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "enableParallaxDrawable must be called before enableVideoPlayback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_3
    new-instance v6, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    .line 209
    invoke-static {v0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    .line 210
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;-><init>(Landroid/content/Context;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/widget/ParallaxTarget;)V

    iput-object v6, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    .line 214
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object p2, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/app/DetailsFragment;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    new-instance p1, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    .line 218
    invoke-virtual {p3}, Landroid/support/v17/leanback/app/DetailsFragment;->getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;

    move-result-object p3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;-><init>(Landroid/support/v17/leanback/media/PlaybackGlue;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    return-void
.end method

.method public final findOrCreateVideoFragment()Landroid/app/Fragment;
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getBottomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getBottomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getCoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 355
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getParallaxDrawableMaxOffset()I
    .locals 1

    .line 494
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    return v0
.end method

.method public final getPlaybackGlue()Landroid/support/v17/leanback/media/PlaybackGlue;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    return-object v0
.end method

.method public final getSolidColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 454
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    return v0
.end method

.method public onCreateGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .locals 2

    .line 399
    new-instance v0, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/app/VideoFragment;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;-><init>(Landroid/support/v17/leanback/app/VideoFragment;)V

    return-object v0
.end method

.method public onCreateVideoFragment()Landroid/app/Fragment;
    .locals 1

    .line 384
    new-instance v0, Landroid/support/v17/leanback/app/VideoFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/VideoFragment;-><init>()V

    return-object v0
.end method

.method onStart()V
    .locals 2

    .line 318
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    .line 320
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 322
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    :cond_1
    return-void
.end method

.method onStop()V
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->pause()V

    :cond_0
    return-void
.end method

.method public final setCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 432
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    .line 433
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 434
    instance-of v0, p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    if-eqz v0, :cond_0

    .line 435
    check-cast p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final setParallaxDrawableMaxOffset(I)V
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroid/support/v17/leanback/widget/DetailsParallaxDrawable;

    if-eqz v0, :cond_0

    .line 481
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "enableParallax already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    return-void
.end method

.method public final setSolidColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 465
    iput p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    .line 466
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->getBottomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 467
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 468
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

    .line 236
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-ne v0, p1, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 243
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 246
    :goto_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 247
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->setPlaybackGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 248
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 249
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    .line 250
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 254
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    goto :goto_2

    .line 251
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->createGlueHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    .line 252
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    :cond_4
    :goto_2
    return-void
.end method

.method public final switchToRows()V
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->switchToRows()V

    return-void
.end method

.method public final switchToVideo()V
    .locals 1

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->switchToVideo()V

    return-void
.end method

.method switchToVideoBeforeCreate()V
    .locals 2

    .line 281
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 282
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    return-void
.end method
