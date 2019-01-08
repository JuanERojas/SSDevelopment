.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionOnKeyListener"
.end annotation


# instance fields
.field private mKeyPressed:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 0

    .line 454
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 452
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 462
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x17

    if-eq p2, v1, :cond_1

    const/16 v1, 0x42

    if-eq p2, v1, :cond_1

    const/16 v1, 0xa0

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 473
    :cond_1
    :pswitch_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 474
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 475
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p2

    .line 477
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->infoOnly()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 485
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 501
    :pswitch_1
    iget-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-eqz p2, :cond_3

    .line 502
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    .line 503
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object p2, p2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean p3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {p2, p1, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    if-nez p2, :cond_3

    .line 491
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    .line 492
    iget-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object p2, p2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-boolean p3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;->mKeyPressed:Z

    invoke-virtual {p2, p1, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_3
    :goto_0
    return v0

    .line 478
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    return v2

    :cond_5
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
