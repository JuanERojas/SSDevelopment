.class public abstract Landroid/support/v17/leanback/media/MediaControllerGlue;
.super Landroid/support/v17/leanback/media/PlaybackControlGlue;
.source "MediaControllerGlue.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "MediaControllerGlue"


# instance fields
.field private final mCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;-><init>(Landroid/content/Context;[I[I)V

    .line 41
    new-instance p1, Landroid/support/v17/leanback/media/MediaControllerGlue$1;

    invoke-direct {p1, p0}, Landroid/support/v17/leanback/media/MediaControllerGlue$1;-><init>(Landroid/support/v17/leanback/media/MediaControllerGlue;)V

    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    return-void
.end method


# virtual methods
.method public attachToMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eq p1, v0, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->detach()V

    .line 83
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 84
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->onMetadataChanged()V

    .line 88
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->onStateChanged()V

    :cond_1
    return-void
.end method

.method public detach()V
    .locals 2

    .line 97
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 164
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentSpeedId()I
    .locals 5

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    if-lez v0, :cond_3

    .line 128
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->getFastForwardSpeeds()[I

    move-result-object v2

    .line 129
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 130
    aget v3, v2, v1

    if-ne v0, v3, :cond_2

    add-int/lit8 v1, v1, 0xa

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->getRewindSpeeds()[I

    move-result-object v2

    .line 136
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_5

    neg-int v3, v0

    .line 137
    aget v4, v2, v1

    if-ne v3, v4, :cond_4

    rsub-int/lit8 v0, v1, -0xa

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "MediaControllerGlue"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find index for speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 2

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedActions()J
    .locals 15

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    const-wide/16 v4, 0x40

    if-eqz v6, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :goto_0
    const-wide/16 v8, 0x20

    and-long v10, v0, v8

    cmp-long v12, v10, v2

    if-eqz v12, :cond_1

    const-wide/16 v10, 0x100

    or-long v12, v6, v10

    move-wide v6, v12

    :cond_1
    const-wide/16 v10, 0x10

    and-long v12, v0, v10

    cmp-long v14, v12, v2

    if-eqz v14, :cond_2

    or-long v12, v6, v10

    move-wide v6, v12

    :cond_2
    and-long v10, v0, v4

    cmp-long v4, v10, v2

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x80

    or-long v10, v6, v4

    move-wide v6, v10

    :cond_3
    const-wide/16 v4, 0x8

    and-long v10, v0, v4

    cmp-long v0, v10, v2

    if-eqz v0, :cond_4

    or-long v0, v6, v8

    goto :goto_1

    :cond_4
    move-wide v0, v6

    :goto_1
    return-wide v0
.end method

.method public hasValidMedia()Z
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaPlaying()Z
    .locals 2

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    return-void
.end method

.method public play(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 201
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    return-void
.end method
