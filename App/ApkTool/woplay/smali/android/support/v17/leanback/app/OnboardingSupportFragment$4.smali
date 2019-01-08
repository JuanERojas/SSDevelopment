.class Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startLogoAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;Landroid/content/Context;)V
    .locals 0

    .line 617
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 620
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;->val$context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    .line 622
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    :cond_0
    return-void
.end method
