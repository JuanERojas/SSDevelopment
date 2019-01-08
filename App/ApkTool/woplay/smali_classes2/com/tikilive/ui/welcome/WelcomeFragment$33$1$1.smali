.class Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;->this$2:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;->this$2:Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;->this$1:Lcom/tikilive/ui/welcome/WelcomeFragment$33;

    iget-object v0, v0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->val$app:Lcom/tikilive/ui/application/MyApplication;

    invoke-virtual {v0}, Lcom/tikilive/ui/application/MyApplication;->getRecommendations()Lcom/tikilive/ui/backend/Recommendations;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$33$1$1;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Recommendations;->refreshIfNeeded(Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V

    return-void
.end method
