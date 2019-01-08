.class Lcom/tikilive/ui/welcome/WelcomeFragment$33;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->initRecommendations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

.field final synthetic val$app:Lcom/tikilive/ui/application/MyApplication;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/application/MyApplication;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->val$app:Lcom/tikilive/ui/application/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/tikilive/ui/backend/Recommendations;)V
    .locals 7

    const/4 v0, 0x1

    .line 817
    invoke-virtual {p1, v0}, Lcom/tikilive/ui/backend/Recommendations;->getNext(Z)Lcom/tikilive/ui/model/Recommendation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v1, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$100(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$700(Lcom/tikilive/ui/welcome/WelcomeFragment;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$700(Lcom/tikilive/ui/welcome/WelcomeFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 824
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$702(Lcom/tikilive/ui/welcome/WelcomeFragment;Ljava/util/Timer;)Ljava/util/Timer;

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$33;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$700(Lcom/tikilive/ui/welcome/WelcomeFragment;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$33$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$33;)V

    .line 848
    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Recommendations;->getRotationInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Recommendations;->getRotationInterval()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v5, p1

    .line 827
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
