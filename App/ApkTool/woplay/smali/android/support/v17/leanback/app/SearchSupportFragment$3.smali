.class Landroid/support/v17/leanback/app/SearchSupportFragment$3;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->getResultsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 167
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, v1, :cond_5

    .line 168
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 169
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseAdapter()V

    .line 170
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iput-object v0, v2, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 171
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 180
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 183
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->executePendingQuery()V

    .line 185
    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateSearchBarNextFocusId()V

    .line 192
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_6

    .line 193
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 196
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateFocus()V

    :goto_1
    return-void
.end method
