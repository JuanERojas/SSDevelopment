.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    .line 224
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

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

    .line 241
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget p1, p1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    if-lez p1, :cond_0

    .line 242
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->access$100(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V

    .line 243
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;->onFadeInComplete()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 254
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 253
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 257
    :cond_1
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object p1, p1, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;->onFadeOutComplete()V

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

    .line 227
    iget-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->access$100(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V

    return-void
.end method
