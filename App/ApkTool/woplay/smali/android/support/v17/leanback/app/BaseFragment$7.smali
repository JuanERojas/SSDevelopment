.class Landroid/support/v17/leanback/app/BaseFragment$7;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BaseFragment;->internalCreateEntranceTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseFragment;)V
    .locals 0

    .line 307
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    .line 310
    iget-object p1, p0, Landroid/support/v17/leanback/app/BaseFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v17/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    .line 311
    iget-object p1, p0, Landroid/support/v17/leanback/app/BaseFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method
