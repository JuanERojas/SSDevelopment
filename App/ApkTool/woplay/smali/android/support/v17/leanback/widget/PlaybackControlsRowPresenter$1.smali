.class Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;
.super Ljava/lang/Object;
.source "PlaybackControlsRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V
    .locals 0

    .line 168
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V
    .locals 1

    .line 172
    check-cast p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    iget-object p3, p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    .line 173
    iget-object v0, p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-ne v0, p1, :cond_0

    iget-object v0, p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    if-eq v0, p2, :cond_1

    .line 174
    :cond_0
    iput-object p1, p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 175
    iput-object p2, p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    .line 176
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->dispatchItemSelection()V

    :cond_1
    return-void
.end method
