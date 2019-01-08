.class Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;
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

.field final synthetic val$currentPageIndex:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;I)V
    .locals 0

    .line 915
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iput p2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->val$currentPageIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 918
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->val$currentPageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;->val$currentPageIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
