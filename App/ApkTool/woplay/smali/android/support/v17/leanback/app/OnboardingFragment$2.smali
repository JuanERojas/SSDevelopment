.class Landroid/support/v17/leanback/app/OnboardingFragment$2;
.super Ljava/lang/Object;
.source "OnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;
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

    .line 246
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 249
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 253
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_0

    return v1

    .line 271
    :pswitch_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz p1, :cond_3

    .line 272
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    goto :goto_0

    .line 274
    :cond_3
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    :goto_0
    return v2

    .line 264
    :pswitch_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz p1, :cond_4

    .line 265
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    goto :goto_1

    .line 267
    :cond_4
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    :goto_1
    return v2

    .line 258
    :cond_5
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget p1, p1, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-nez p1, :cond_6

    return v1

    .line 261
    :cond_6
    iget-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
