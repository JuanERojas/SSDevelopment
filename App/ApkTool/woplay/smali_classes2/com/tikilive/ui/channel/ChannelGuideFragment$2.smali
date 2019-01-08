.class Lcom/tikilive/ui/channel/ChannelGuideFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment;
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

    .line 130
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "from"

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "duration"

    .line 134
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    add-int v0, p1, p2

    if-lez p1, :cond_4

    if-lez p2, :cond_4

    .line 138
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel guide cache updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    int-to-long v3, v0

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result p2

    if-gt p2, p1, :cond_0

    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$500(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result p2

    if-lt p1, p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result p2

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$500(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result p2

    if-lt v0, p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$400(Lcom/tikilive/ui/channel/ChannelGuideFragment;)I

    move-result p1

    if-ge p1, v0, :cond_3

    .line 140
    :cond_2
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, " ==> refreshing displayed interval"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$2;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->reload()V

    goto :goto_0

    .line 143
    :cond_3
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, " ==> no need to refresh, the display interval is outside the updated interval"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
