.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

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

    .line 219
    iget-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->access$202(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
