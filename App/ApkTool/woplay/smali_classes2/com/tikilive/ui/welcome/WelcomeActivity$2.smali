.class Lcom/tikilive/ui/welcome/WelcomeActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$100()Ljava/lang/String;

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

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 92
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network isConnected()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$200(Lcom/tikilive/ui/welcome/WelcomeActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$300(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    .line 99
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0a008e

    .line 100
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeFragment;->newInstance()Lcom/tikilive/ui/welcome/WelcomeFragment;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$202(Lcom/tikilive/ui/welcome/WelcomeActivity;Z)Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 122
    :cond_3
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$100()Ljava/lang/String;

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

    .line 107
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 110
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network disconnect and there is no other connection available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$200(Lcom/tikilive/ui/welcome/WelcomeActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 113
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$400(Lcom/tikilive/ui/welcome/WelcomeActivity;)V

    .line 116
    :cond_5
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1, v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$202(Lcom/tikilive/ui/welcome/WelcomeActivity;Z)Z

    goto :goto_1

    .line 119
    :cond_6
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got network disconnect, but we still have connectivity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
