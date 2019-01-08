.class Landroid/support/v17/leanback/widget/SearchOrbView$1;
.super Ljava/lang/Object;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchOrbView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V
    .locals 0

    .line 131
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$1;->this$0:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView$1;->this$0:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    return-void
.end method
