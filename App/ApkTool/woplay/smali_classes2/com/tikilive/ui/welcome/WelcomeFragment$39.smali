.class Lcom/tikilive/ui/welcome/WelcomeFragment$39;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->ensureTimezone(Ljava/lang/String;)V
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

    .line 1072
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$39;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1075
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.DATE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1076
    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$39;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-virtual {p2, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
