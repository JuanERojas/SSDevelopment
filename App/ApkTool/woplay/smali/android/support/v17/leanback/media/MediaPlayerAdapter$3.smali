.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 62
    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 65
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    .line 66
    iget-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void
.end method
