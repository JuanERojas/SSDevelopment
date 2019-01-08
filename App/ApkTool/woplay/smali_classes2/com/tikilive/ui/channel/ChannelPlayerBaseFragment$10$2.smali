.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;->this$1:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, v0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    new-instance v1, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2$1;-><init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$10$2;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
