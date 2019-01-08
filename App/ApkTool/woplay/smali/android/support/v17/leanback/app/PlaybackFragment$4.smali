.class Landroid/support/v17/leanback/app/PlaybackFragment$4;
.super Landroid/os/Handler;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 0

    .line 282
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 285
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/support/v17/leanback/app/PlaybackFragment;->access$200()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    :cond_0
    return-void
.end method
