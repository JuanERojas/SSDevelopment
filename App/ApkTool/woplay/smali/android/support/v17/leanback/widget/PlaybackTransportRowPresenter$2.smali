.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V
    .locals 0

    .line 564
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V
    .locals 2

    .line 568
    check-cast p3, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iget-object p3, p3, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 569
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    .line 571
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    .line 570
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 573
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroid/support/v17/leanback/widget/Action;

    if-eqz p1, :cond_1

    .line 574
    iget-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    check-cast p2, Landroid/support/v17/leanback/widget/Action;

    invoke-interface {p1, p2}, Landroid/support/v17/leanback/widget/OnActionClickedListener;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    :cond_1
    return-void
.end method
