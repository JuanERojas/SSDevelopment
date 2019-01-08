.class Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1$1;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1$1;->this$3:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/tikilive/ui/backend/Recommendations;)V
    .locals 1

    .line 839
    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Recommendations;->getNext()Lcom/tikilive/ui/model/Recommendation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1$1;->this$3:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;->this$2:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$33;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$100(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V

    :cond_0
    return-void
.end method
