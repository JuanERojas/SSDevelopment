.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerAdapter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 53
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mInitialized:Z

    .line 54
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    .line 55
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object p1, p1, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mSurfaceHolderGlueHost:Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-boolean p1, p1, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHasDisplay:Z

    if-eqz p1, :cond_1

    .line 56
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    :cond_1
    return-void
.end method
