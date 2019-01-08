.class Lcom/tikilive/ui/welcome/NoNetworkFragment$1;
.super Ljava/lang/Object;
.source "NoNetworkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/NoNetworkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/NoNetworkFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment$1;->this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 56
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.tv.settings"

    const-string v2, "com.android.tv.settings.connectivity.NetworkActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment$1;->this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/NoNetworkFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/tikilive/ui/welcome/NoNetworkFragment$1;->this$0:Lcom/tikilive/ui/welcome/NoNetworkFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/welcome/NoNetworkFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
