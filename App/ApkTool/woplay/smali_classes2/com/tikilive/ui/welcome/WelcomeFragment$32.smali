.class Lcom/tikilive/ui/welcome/WelcomeFragment$32;
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

    .line 776
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$32;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$32;->val$item:Lcom/tikilive/ui/welcome/MainMenuItem;

    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 4

    .line 779
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$32;->val$item:Lcom/tikilive/ui/welcome/MainMenuItem;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/MainMenuItem;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$32;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 785
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 789
    :goto_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$32;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 791
    :catch_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$32;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    const v1, 0x7f1201ae

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
