.class Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MainMenuSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/welcome/MainMenuSnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/MainMenuSnapHelper;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .line 20
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    iput-boolean v0, v1, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapping:Z

    :cond_0
    if-nez p2, :cond_2

    .line 24
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    iget-boolean p2, p2, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapping:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapListener:Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;

    if-eqz p2, :cond_2

    .line 25
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    invoke-virtual {p2, p1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->getSnappedPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 27
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapListener:Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;

    invoke-interface {p2, p1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;->onSnap(I)V

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper$1;->this$0:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    iput-boolean v0, p1, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->mSnapping:Z

    :cond_2
    return-void
.end method
