.class Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;
.super Ljava/lang/Object;
.source "ChannelPlayerBaseFragment.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnCurrentEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->doChannelChange(Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

.field final synthetic val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;->val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentEvent(Lcom/tikilive/ui/model/Channel;)V
    .locals 1

    .line 522
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;->this$0:Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment$8;->val$listener:Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;

    invoke-static {p1, v0}, Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;->access$100(Lcom/tikilive/ui/channel/ChannelPlayerBaseFragment;Lcom/tikilive/ui/channel/ChannelActivity$OnLoadCompleteListener;)V

    return-void
.end method
