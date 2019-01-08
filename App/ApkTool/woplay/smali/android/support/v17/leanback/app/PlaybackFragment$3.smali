.class Landroid/support/v17/leanback/app/PlaybackFragment$3;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 248
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget p1, p1, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    if-lez p1, :cond_0

    .line 249
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->access$100(Landroid/support/v17/leanback/app/PlaybackFragment;Z)V

    .line 250
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeInComplete()V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 261
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 260
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 264
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz p1, :cond_2

    .line 265
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 234
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->access$100(Landroid/support/v17/leanback/app/PlaybackFragment;Z)V

    return-void
.end method
