.class Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;
.super Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
.source "PlaybackBaseControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;)V
    .locals 0

    .line 134
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 151
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateBufferedProgress()V

    return-void
.end method

.method public onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V
    .locals 0

    .line 193
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput-boolean p2, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    .line 194
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object p1, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object p1, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 145
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    return-void
.end method

.method public onDurationChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 157
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    return-void
.end method

.method public onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V
    .locals 1

    .line 183
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    .line 184
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p2, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    .line 185
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput-object p3, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    .line 186
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object p1, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object p1, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 201
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    return-void
.end method

.method public onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 163
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    return-void
.end method

.method public onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 139
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 0

    .line 169
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPreparedStateChanged()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/support/v17/leanback/media/PlayerAdapter;II)V
    .locals 0

    .line 174
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p2, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    .line 175
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p3, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    .line 176
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object p1, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object p1, p1, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method
