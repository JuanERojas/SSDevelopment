.class Landroid/support/v17/leanback/app/PlaybackFragment$11;
.super Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;
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

    .line 1076
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;
    .locals 1

    .line 1092
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isSeekEnabled()Z
    .locals 1

    .line 1079
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->isSeekEnabled()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public onSeekFinished(Z)V
    .locals 1

    .line 1104
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekFinished(Z)V

    .line 1107
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setSeekMode(Z)V

    return-void
.end method

.method public onSeekPositionChanged(J)V
    .locals 1

    .line 1097
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekPositionChanged(J)V

    :cond_0
    return-void
.end method

.method public onSeekStarted()V
    .locals 2

    .line 1084
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekStarted()V

    .line 1087
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setSeekMode(Z)V

    return-void
.end method
