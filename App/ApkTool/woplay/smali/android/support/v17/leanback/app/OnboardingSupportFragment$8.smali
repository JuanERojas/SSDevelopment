.class Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V
    .locals 0

    .line 950
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 953
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method