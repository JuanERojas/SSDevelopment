.class Landroid/support/v17/leanback/app/DetailsSupportFragment$7;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Ljava/lang/Object;)V
    .locals 1

    .line 309
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    .line 314
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 300
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    iget-object p1, p1, Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method
