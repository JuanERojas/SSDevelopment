.class public abstract Landroid/support/v17/leanback/media/PlaybackGlue;
.super Ljava/lang/Object;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

.field mPlayerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addPlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    return-object v0
.end method

.method protected getPlayerCallbacks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 229
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 230
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    new-instance v0, Landroid/support/v17/leanback/media/PlaybackGlue$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V

    .line 268
    iput-object v1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    :cond_0
    return-void
.end method

.method protected onHostPause()V
    .locals 0

    return-void
.end method

.method protected onHostResume()V
    .locals 0

    return-void
.end method

.method protected onHostStart()V
    .locals 0

    return-void
.end method

.method protected onHostStop()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public playWhenPrepared()V
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/media/PlaybackGlue$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->addPlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 0

    return-void
.end method

.method public removePlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlayerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 2

    .line 187
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-ne v0, p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->attachToGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    .line 193
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    .line 194
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue;->mPlaybackGlueHost:Landroid/support/v17/leanback/media/PlaybackGlueHost;

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->attachToGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    :cond_2
    return-void
.end method