.class Lcom/tikilive/ui/welcome/WelcomeFragment$37;
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

.field final synthetic val$serverTimezone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Ljava/util/TimeZone;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->val$serverTimezone:Ljava/util/TimeZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1055
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object p1

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->val$serverTimezone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1059
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    const v1, 0x7f12012f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->val$serverTimezone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$37;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object p1

    const v0, 0x7f120264

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method
