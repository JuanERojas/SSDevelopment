.class Landroid/support/v17/leanback/app/DetailsFragment$3;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 141
    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 142
    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 143
    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 144
    invoke-static {v0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
