.class final Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentHostImpl"
.end annotation


# instance fields
.field mShowTitleView:Z

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0

    .line 317
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    return-void
.end method


# virtual methods
.method public notifyDataReady(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;)V
    .locals 1

    .line 333
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object p1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-nez p1, :cond_1

    return-void

    .line 342
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyViewCreated(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;)V
    .locals 1

    .line 322
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 323
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-nez p1, :cond_0

    .line 325
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_0
    return-void
.end method

.method public showTitleView(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->mShowTitleView:Z

    .line 351
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object p1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean p1, p1, Landroid/support/v17/leanback/app/BrowseFragment;->mIsPageRow:Z

    if-nez p1, :cond_1

    return-void

    .line 360
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment;->updateTitleViewVisibility()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
