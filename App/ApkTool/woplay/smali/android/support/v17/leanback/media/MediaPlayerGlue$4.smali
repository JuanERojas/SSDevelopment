.class Landroid/support/v17/leanback/media/MediaPlayerGlue$4;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V
    .locals 0

    .line 440
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 443
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->access$102(Landroid/support/v17/leanback/media/MediaPlayerGlue;Z)Z

    .line 444
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    .line 447
    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method
