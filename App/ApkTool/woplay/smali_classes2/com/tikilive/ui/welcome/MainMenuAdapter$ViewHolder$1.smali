.class Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "MainMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/welcome/MainMenuAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;Lcom/tikilive/ui/welcome/MainMenuAdapter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->val$this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v6, v6, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v6}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$000(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 106
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const p2, 0x3f04325c

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 111
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {p2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$100(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {p2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$200(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 118
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {p2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$100(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    iget-object v6, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v6, v6, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v6}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$100(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    iput v6, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 120
    iget-object v6, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v6, v6, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v6}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$100(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {p2, v3}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$202(Lcom/tikilive/ui/welcome/MainMenuAdapter;Z)Z

    .line 124
    :cond_1
    iget-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p2, p2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$1;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v3, v3, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v3}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$000(Lcom/tikilive/ui/welcome/MainMenuAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0701e2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const p2, 0x3fc2192e

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method
