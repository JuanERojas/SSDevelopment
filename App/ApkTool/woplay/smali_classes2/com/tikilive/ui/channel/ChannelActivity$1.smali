.class Lcom/tikilive/ui/channel/ChannelActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "connectivity"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 181
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const v0, 0x7f0a01e1

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network isConnected()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$200(Lcom/tikilive/ui/channel/ChannelActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout;

    const/4 p2, -0x1

    const v0, 0x7f1201ac

    if-eqz p1, :cond_1

    .line 190
    invoke-static {p1, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 194
    :goto_0
    new-instance p2, Lcom/tikilive/ui/channel/ChannelActivity$1$1;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/channel/ChannelActivity$1$1;-><init>(Lcom/tikilive/ui/channel/ChannelActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 203
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tikilive/ui/channel/ChannelActivity;->access$202(Lcom/tikilive/ui/channel/ChannelActivity;Z)Z

    goto/16 :goto_3

    :cond_3
    if-eqz p1, :cond_5

    .line 208
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 231
    :cond_4
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring network info state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_1
    const-string p1, "noConnectivity"

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 212
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network disconnect and there is no other connection available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$200(Lcom/tikilive/ui/channel/ChannelActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 216
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout;

    const/4 p2, -0x2

    const v0, 0x7f1201ad

    if-eqz p1, :cond_6

    .line 218
    invoke-static {p1, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    goto :goto_2

    .line 220
    :cond_6
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$100(Lcom/tikilive/ui/channel/ChannelActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 222
    :goto_2
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 225
    :cond_7
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$1;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {p1, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$202(Lcom/tikilive/ui/channel/ChannelActivity;Z)Z

    goto :goto_3

    .line 228
    :cond_8
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network disconnect, but we still have connectivity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
