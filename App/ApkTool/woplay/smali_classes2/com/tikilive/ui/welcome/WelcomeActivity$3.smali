.class Lcom/tikilive/ui/welcome/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;


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

    .line 140
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$3;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$3;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tikilive/ui/helper/History;->redirectHistory()Z

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$3;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/tikilive/ui/helper/History;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/helper/History;->clearHistory()V

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeActivity$3;->this$0:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a008e

    .line 147
    invoke-static {}, Lcom/tikilive/ui/welcome/WelcomeFragment;->newInstance()Lcom/tikilive/ui/welcome/WelcomeFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
