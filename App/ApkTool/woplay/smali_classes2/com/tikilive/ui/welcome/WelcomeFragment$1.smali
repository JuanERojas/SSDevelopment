.class Lcom/tikilive/ui/welcome/WelcomeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$1;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method
