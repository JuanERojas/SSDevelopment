.class Lcom/tikilive/ui/channel/ChannelGuideFragment$5;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$1000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/listener/OnChannelSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$5;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {v0}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$600(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/model/ChannelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/model/ChannelProvider;->getCurrent()Lcom/tikilive/ui/model/Channel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tikilive/ui/listener/OnChannelSelectedListener;->onChannelSelected(Lcom/tikilive/ui/model/Channel;)V

    :cond_0
    return-void
.end method
