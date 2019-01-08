.class Lcom/tikilive/ui/welcome/WelcomeFragment$2;
.super Lcom/tikilive/ui/listener/OnSwipeTouchListener;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Landroid/content/Context;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0, p2}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeLeft()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/application/MyApplication;

    .line 155
    invoke-virtual {v0}, Lcom/tikilive/ui/application/MyApplication;->getRecommendations()Lcom/tikilive/ui/backend/Recommendations;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Recommendations;->getNext(Z)Lcom/tikilive/ui/model/Recommendation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v2, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$100(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V

    return v1

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSwipeLeft()Z

    move-result v0

    return v0
.end method

.method public onSwipeRight()Z
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/application/MyApplication;

    .line 166
    invoke-virtual {v0}, Lcom/tikilive/ui/application/MyApplication;->getRecommendations()Lcom/tikilive/ui/backend/Recommendations;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/backend/Recommendations;->getPrevious(Z)Lcom/tikilive/ui/model/Recommendation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$2;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v2, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$100(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V

    return v1

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSwipeRight()Z

    move-result v0

    return v0
.end method
