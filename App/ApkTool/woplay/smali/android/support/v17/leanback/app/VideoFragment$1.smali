.class Landroid/support/v17/leanback/app/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/VideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VideoFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VideoFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 56
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    const/4 v0, 0x1

    iput v0, p1, Landroid/support/v17/leanback/app/VideoFragment;->mState:I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VideoFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 71
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/VideoFragment$1;->this$0:Landroid/support/v17/leanback/app/VideoFragment;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v17/leanback/app/VideoFragment;->mState:I

    return-void
.end method
