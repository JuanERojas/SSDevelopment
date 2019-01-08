.class Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;
.super Ljava/util/TimerTask;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment$33;->onRefresh(Lcom/tikilive/ui/backend/Recommendations;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$33;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$33;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$33;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$33;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$33;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/welcome/WelcomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
