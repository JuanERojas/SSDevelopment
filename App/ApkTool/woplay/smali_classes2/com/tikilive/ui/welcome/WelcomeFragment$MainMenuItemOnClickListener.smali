.class abstract Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MainMenuItemOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onAnimationEnd()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1137
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1140
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1141
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1142
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    const v5, 0x3fc2192e

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1143
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1144
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1146
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1147
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v5, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;

    invoke-direct {v5, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;)V

    .line 1149
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1163
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    const/4 v0, 0x1

    .line 1165
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1166
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1167
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f04325c

    .line 1168
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1169
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1170
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1172
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1173
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1174
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener$2;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;Landroid/view/View;)V

    .line 1175
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1192
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$1502(Lcom/tikilive/ui/welcome/WelcomeFragment;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;->onAnimationEnd()V

    :goto_0
    return-void
.end method
