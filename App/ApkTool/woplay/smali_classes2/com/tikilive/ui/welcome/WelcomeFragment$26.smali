.class Lcom/tikilive/ui/welcome/WelcomeFragment$26;
.super Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->setupMainMenu(Lcom/tikilive/ui/application/MyApplication;)V
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

    .line 688
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$26;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 3

    .line 691
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$26;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/video/NetworksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$26;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
