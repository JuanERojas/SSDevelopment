.class Landroid/support/v17/leanback/app/OnboardingFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;->startEnterAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V
    .locals 0

    .line 766
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$5;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 769
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$5;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    return-void
.end method