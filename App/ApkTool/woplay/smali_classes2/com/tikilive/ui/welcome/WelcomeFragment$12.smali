.class Lcom/tikilive/ui/welcome/WelcomeFragment$12;
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

    .line 489
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$12;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 3

    .line 492
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$12;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INITIAL_FRAGMENT"

    const/16 v2, 0x101

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$12;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
