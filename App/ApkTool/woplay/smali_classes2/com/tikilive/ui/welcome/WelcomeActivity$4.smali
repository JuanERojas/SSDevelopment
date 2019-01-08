.class Lcom/tikilive/ui/welcome/WelcomeActivity$4;
.super Ljava/util/TimerTask;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeActivity;->showConnectingToNetwork()V
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

    .line 182
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connecting to network expired ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$4;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/tikilive/ui/welcome/NoNetworkFragment;->newInstance()Lcom/tikilive/ui/welcome/NoNetworkFragment;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
