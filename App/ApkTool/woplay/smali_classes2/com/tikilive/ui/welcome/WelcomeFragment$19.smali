.class Lcom/tikilive/ui/welcome/WelcomeFragment$19;
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

.field final synthetic val$item:Lcom/tikilive/ui/welcome/MainMenuItem;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$19;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$19;->val$item:Lcom/tikilive/ui/welcome/MainMenuItem;

    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 3

    .line 597
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$19;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    const-class v2, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INITIAL_FRAGMENT"

    const/16 v2, 0x102

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$19;->val$item:Lcom/tikilive/ui/welcome/MainMenuItem;

    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->getTargetId()I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "channel_id"

    .line 601
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$19;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
