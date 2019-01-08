.class Lcom/tikilive/ui/video/VideoPlaybackActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/VideoPlaybackActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/VideoPlaybackActivity;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

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

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 318
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 319
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network isConnected()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object p1

    const p2, 0x7f1201ac

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 325
    new-instance p2, Lcom/tikilive/ui/video/VideoPlaybackActivity$4$1;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/video/VideoPlaybackActivity$4$1;-><init>(Lcom/tikilive/ui/video/VideoPlaybackActivity$4;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 334
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 337
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1102(Lcom/tikilive/ui/video/VideoPlaybackActivity;Z)Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 339
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 355
    :cond_3
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

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

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "noConnectivity"

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 343
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network disconnect and there is no other connection available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1100(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 346
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1000(Lcom/tikilive/ui/video/VideoPlaybackActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object p1

    const p2, 0x7f1201ad

    const/4 v1, -0x2

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 349
    :cond_5
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoPlaybackActivity$4;->this$0:Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-static {p1, v0}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$1102(Lcom/tikilive/ui/video/VideoPlaybackActivity;Z)Z

    goto :goto_1

    .line 352
    :cond_6
    invoke-static {}, Lcom/tikilive/ui/video/VideoPlaybackActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network disconnect, but we still have connectivity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
